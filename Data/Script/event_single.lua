require 'common'

SINGLE_CHAR_SCRIPT = {}

-----------------------------------
-- Base Functions
-----------------------------------

function SINGLE_CHAR_SCRIPT.Test(owner, ownerChar, context, args)
  PrintInfo("Test")
end

function SINGLE_CHAR_SCRIPT.ThiefCheck(owner, ownerChar, context, args)
  local baseLoc = _DUNGEON.ActiveTeam.Leader.CharLoc
  local tile = _ZONE.CurrentMap.Tiles[baseLoc.X][baseLoc.Y]
  
  local thief_idx = "thief"
  
  local price = COMMON.GetDungeonCartPrice()
  local security_price = COMMON.GetShopPriceState()
  if price < 0 then
    --lost merchandise was placed back in shop, readjust the security price and clear the current price
    security_price.Amount = security_price.Amount - price
  elseif price < security_price.Cart then
    --merchandise was returned.  doesn't matter who did it.
    security_price.Cart = price
  elseif price > security_price.Cart then
    local char_index = _ZONE.CurrentMap:GetCharIndex(context.User)
    if char_index.Faction ~= RogueEssence.Dungeon.Faction.Player then
      --non-player was responsible for taking/destroying merchandise, just readjust the security price and clear the current price
      security_price.Amount = security_price.Amount - price + security_price.Cart
	else
	  --player was responsible for taking/destroying merchandise, add to the cart
      security_price.Cart = price
    end
  end

  
  if tile.Effect.ID ~= "area_shop" then
	if security_price.Cart > 0 then
	  _GAME:BGM("", false)
      COMMON.ClearAllPrices()
	  
	  SV.adventure.Thief = true
	  local index_from = owner.StatusStates:Get(luanet.ctype(MapIndexType))
	  _DUNGEON:LogMsg(STRINGS:Format(RogueEssence.StringKey(string.format("TALK_SHOP_THIEF_%04d", index_from.Index)):ToLocal()))
		
	  -- create thief status
	  local thief_status = RogueEssence.Dungeon.MapStatus(thief_idx)
      thief_status:LoadFromData()
	  -- put spawner from security status in thief status
	  local security_to = thief_status.StatusStates:Get(luanet.ctype(ShopSecurityType))
	  local security_from = owner.StatusStates:Get(luanet.ctype(ShopSecurityType))
	  security_to.Security = security_from.Security
      TASK:WaitTask(_DUNGEON:RemoveMapStatus(owner.ID))
      TASK:WaitTask(_DUNGEON:AddMapStatus(thief_status))
	  GAME:WaitFrames(60)
	end
  else
    local shop_idx = "shopping"
	if not _ZONE.CurrentMap.Status:ContainsKey(thief_idx) and not _ZONE.CurrentMap.Status:ContainsKey(shop_idx) then
	  
	  local shop_status = RogueEssence.Dungeon.MapStatus(shop_idx)
      shop_status:LoadFromData()
      TASK:WaitTask(_DUNGEON:AddMapStatus(shop_status))
	end
  end
end

function SINGLE_CHAR_SCRIPT.ShopCheckout(owner, ownerChar, context, args)
  local baseLoc = _DUNGEON.ActiveTeam.Leader.CharLoc
  local tile = _ZONE.CurrentMap.Tiles[baseLoc.X][baseLoc.Y]

  if tile.Effect.ID ~= "area_shop" then
	local found_shopkeep = COMMON.FindNpcWithTable(false, "Role", "Shopkeeper")
    if found_shopkeep and COMMON.CanTalk(found_shopkeep) then
	  local security_state = COMMON.GetShopPriceState()
      local price = security_state.Cart
	  local sell_price = COMMON.GetDungeonSellPrice()
  
      if price > 0 or sell_price > 0 then
	    local is_near = false
		local loc_diff = _DUNGEON.ActiveTeam.Leader.CharLoc - found_shopkeep.CharLoc
		if loc_diff:Dist8() > 1 then
		  -- check to see if the shopkeeper can see the player and warp there
		  local near_mat = false
		  local dirs = { Direction.Down, Direction.DownLeft, Direction.Left, Direction.UpLeft, Direction.Up, Direction.UpRight, Direction.Right, Direction.DownRight }
		  for idx, dir in pairs(dirs) do
            if COMMON.ShopTileCheck(baseLoc, dir) then
		      near_mat = true
		    end
		  end
		  
		  if (near_mat or found_shopkeep:CanSeeCharacter(_DUNGEON.ActiveTeam.Leader)) then
	        -- attempt to warp the shopkeeper next to the player
		    local cand_locs = _ZONE.CurrentMap:FindNearLocs(found_shopkeep, baseLoc, 1)
		    if cand_locs.Count > 0 then
		      TASK:WaitTask(_DUNGEON:PointWarp(found_shopkeep, cand_locs[0], false))
			  is_near = true
		    end
		  end
		else
		  is_near = true
		end

		-- if it can't, fall through
		if is_near then
		  DUNGEON:CharTurnToChar(found_shopkeep, _DUNGEON.ActiveTeam.Leader)
		  DUNGEON:CharTurnToChar(_DUNGEON.ActiveTeam.Leader, found_shopkeep)
          UI:SetSpeaker(found_shopkeep)
		  
		  if sell_price > 0 then
		    UI:ChoiceMenuYesNo(STRINGS:Format(RogueEssence.StringKey(string.format("TALK_SHOP_SELL_%04d", found_shopkeep.Discriminator)):ToLocal(), STRINGS:FormatKey("MONEY_AMOUNT", sell_price)), false)
		    UI:WaitForChoice()
		    result = UI:ChoiceResult()
		  
		    if SV.adventure.Thief then
			  COMMON.ThiefReturn()
			  price = 0
		    elseif result then
			  -- iterate player inventory prices and remove total price
			  COMMON.PayDungeonSellPrice(sell_price)
			  SOUND:PlayBattleSE("DUN_Money")
			  UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey(string.format("TALK_SHOP_SELL_DONE_%04d", found_shopkeep.Discriminator)):ToLocal()))
		    else
			  -- nothing
		    end
		  end
		  
		  if price > 0 then
	        UI:ChoiceMenuYesNo(STRINGS:Format(RogueEssence.StringKey(string.format("TALK_SHOP_PAY_%04d", found_shopkeep.Discriminator)):ToLocal(), STRINGS:FormatKey("MONEY_AMOUNT", price)), false)
	        UI:WaitForChoice()
	        result = UI:ChoiceResult()
	        if SV.adventure.Thief then
			  COMMON.ThiefReturn()
		    elseif result then
	          if price > GAME:GetPlayerMoney() then
                UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey(string.format("TALK_SHOP_PAY_SHORT_%04d", found_shopkeep.Discriminator)):ToLocal()))
	          else
	            -- iterate player inventory prices and remove total price
                COMMON.PayDungeonCartPrice(price)
		        SOUND:PlayBattleSE("DUN_Money")
	            UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey(string.format("TALK_SHOP_PAY_DONE_%04d", found_shopkeep.Discriminator)):ToLocal()))
	          end
	        end
		  end
		end
      else
        UI:SetSpeaker(found_shopkeep)
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey(string.format("TALK_SHOP_END_%04d", found_shopkeep.Discriminator)):ToLocal()))
      end
	end
  end
end

function SINGLE_CHAR_SCRIPT.UpdateEscort(owner, ownerChar, context, args)
  if context.User ~= nil then
    return
  end
  local party = GAME:GetPlayerGuestTable()
  for i, p in ipairs(party) do
    if p.Dead == false then
      local e_tbl = LTBL(p)
	  if e_tbl ~= nil then
	    local mission = SV.missions.Missions[e_tbl.Escort]
	    if mission ~= nil then
	      if mission.Type == COMMON.MISSION_TYPE_ESCORT_OUT then
		    if _ZONE.CurrentMapID.Segment == 0 then
		      mission.DestFloor = _ZONE.CurrentMapID.ID
		    end
	      end
	    end
	  end
	end
  end
end

function SINGLE_CHAR_SCRIPT.DestinationFloor(owner, ownerChar, context, args)
  if context.User ~= nil then
    return
  end
  SOUND:PlayFanfare("Fanfare/Note")
  UI:ResetSpeaker()
  UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("DLG_MISSION_DESTINATION"):ToLocal()))
end


function SINGLE_CHAR_SCRIPT.OutlawFloor(owner, ownerChar, context, args)
  if context.User ~= nil then
    return
  end
  
  if not args.Silent then
    SOUND:PlayBGM("C07. Outlaw.ogg", false)
    UI:ResetSpeaker()
    UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("DLG_MISSION_OUTLAW"):ToLocal()))
  end
  
  -- add a map status for outlaw clear check
  local checkClearStatus = "outlaw_clear_check" -- outlaw clear check
  local status = RogueEssence.Dungeon.MapStatus(checkClearStatus)
  status:LoadFromData()
  TASK:WaitTask(_DUNGEON:AddMapStatus(status))
end

function SINGLE_CHAR_SCRIPT.OutlawHouse(owner, ownerChar, context, args)
  if context.User ~= nil then
    return
  end
  
  local found_outlaw = COMMON.FindNpcWithTable(true, "Mission", args.Mission)
  found_outlaw.CharDir = _ZONE.CurrentMap:ApproximateClosestDir8(found_outlaw.CharLoc, _DUNGEON.ActiveTeam.Leader.CharLoc)
  UI:SetSpeaker(found_outlaw)
  UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("DLG_MISSION_OUTLAW_TRAP"):ToLocal()))
	
  COMMON.TriggerAdHocMonsterHouse(owner, ownerChar, found_outlaw)
end

function SINGLE_CHAR_SCRIPT.OutlawClearCheck(owner, ownerChar, context, args)
  -- check for no outlaw in the mission list
  remaining_outlaw = false
  for name, mission in pairs(SV.missions.Missions) do
    if mission.Complete == COMMON.MISSION_INCOMPLETE and _ZONE.CurrentZoneID == mission.DestZone
	  and _ZONE.CurrentMapID.Segment == mission.DestSegment and _ZONE.CurrentMapID.ID == mission.DestFloor then
	  local found_outlaw = COMMON.FindNpcWithTable(true, "Mission", name)
	  -- check for disguised outlaws
	  if not found_outlaw then
	    found_outlaw = COMMON.FindNpcWithTable(false, "Mission", name)
	  end
      if found_outlaw then
        remaining_outlaw = true
      else
        -- if no outlaws of the mission list, mark quest as complete
        mission.Complete = COMMON.MISSION_COMPLETE
        UI:ResetSpeaker()
        
        -- retrieve the species of the target
        local target_name = _DATA:GetMonster(mission.TargetSpecies.Species).Name
        -- retrieve the species of the quest giver
        local client_name = _DATA:GetMonster(mission.ClientSpecies.Species).Name
        
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("DLG_MISSION_OUTLAW_DONE"):ToLocal(), target_name:ToLocal()))
        UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("DLG_MISSION_REMINDER"):ToLocal(), client_name:ToLocal()))
      end
    end
  end
  if not remaining_outlaw then
    -- if no outlaws are found in the map, return music to normal and remove this status from the map
    SOUND:PlayBGM(_ZONE.CurrentMap.Music, true)
    local checkClearStatus = "outlaw_clear_check" -- outlaw clear check
	TASK:WaitTask(_DUNGEON:RemoveMapStatus(checkClearStatus))
  end
end

-----------------------------------
-- Custom Functions
-----------------------------------

function SINGLE_CHAR_SCRIPT.HeroPartnerCheck(owner, ownerChar, context, args) --Palika's Script
	local player_count = GAME:GetPlayerPartyCount()
	local guest_count = GAME:GetPlayerGuestCount()
	if player_count < 1 then return end--If there's no party members then we dont need to do anything
	for i = 0, player_count - 1, 1 do 
		local player = GAME:GetPlayerPartyMember(i)
		if player.Dead and player.IsPartner then --someone died 
			for i = 0, player_count - 1, 1 do --beam everyone else out
				player = GAME:GetPlayerPartyMember(i)
				if not player.Dead then--dont beam out whoever died
					--delay between beam outs
					GAME:WaitFrames(60)
					TASK:WaitTask(_DUNGEON:ProcessBattleFX(player, player, _DATA.SendHomeFX))
					player.Dead = true
				end
			end
			--beam out guests
			for i = 0, guest_count - 1, 1 do --beam everyone else out
				guest = GAME:GetPlayerGuestMember(i)
				if not guest.Dead then--dont beam out whoever died
					--delay between beam outs
					GAME:WaitFrames(60)
					TASK:WaitTask(_DUNGEON:ProcessBattleFX(guest, guest, _DATA.SendHomeFX))
					guest.Dead = true
				end
			end
			--TASK:WaitTask(_GAME:EndSegment(RogueEssence.Data.GameProgress.ResultType.Failed))
			return--cut the script short here if someone died, no need to check guests
		end
	end
	
	--check guests as well
	if guest_count < 1 then return end--If there's no guest members then we dont need to do anything
	for i = 0, guest_count - 1, 1 do 
		local guest = GAME:GetPlayerGuestMember(i)
		if guest.Dead and guest.IsPartner then --someone died 
			--beam player's team out first
			for i = 0, player_count - 1, 1 do --beam everyone else out
				player = GAME:GetPlayerPartyMember(i)
				if not player.Dead then--dont beam out whoever died
					TASK:WaitTask(_DUNGEON:ProcessBattleFX(player, player, _DATA.SendHomeFX))
					player.Dead = true
					GAME:WaitFrames(60)
				end
			end
			for i = 0, guest_count - 1, 1 do --beam everyone else out
				guest = GAME:GetPlayerGuestMember(i)
				if not guest.Dead then--dont beam out whoever died
					TASK:WaitTask(_DUNGEON:ProcessBattleFX(guest, guest, _DATA.SendHomeFX))
					guest.Dead = true
					GAME:WaitFrames(60)
				end
			end
			--TASK:WaitTask(_GAME:EndSegment(RogueEssence.Data.GameProgress.ResultType.Failed))
		end
	end
			
end

function SINGLE_CHAR_SCRIPT.BeachCaveTutorial(owner, ownerChar, context, args) --Tutorial Script (Credit to Palika Again)
  if context.User == nil then
    UI:ResetSpeaker()
    if args.Floor == 1 then
			if SV.beach_cave.Tutorial < 1 then
				SOUND:PlayFanfare("Fanfare/Note")
				UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_1"):ToLocal(), STRINGS:LocalKeyString(2)))
				SV.beach_cave.Tutorial = 1
				GAME:WaitFrames(20)	
			end
    elseif args.Floor == 2 then
			if SV.beach_cave.Tutorial < 2 then
				SOUND:PlayFanfare("Fanfare/Note")
				UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_2"):ToLocal()))
				UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_3"):ToLocal(), STRINGS:LocalKeyString(9)))
				UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_4"):ToLocal(), STRINGS:LocalKeyString(12)))
				SV.beach_cave.Tutorial = 2
				GAME:WaitFrames(20)	
			end
    elseif args.Floor == 3 then
			if SV.beach_cave.Tutorial < 3 then
				SOUND:PlayFanfare("Fanfare/Note")
				UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_5"):ToLocal()))
				SV.beach_cave.Tutorial = 3
				GAME:WaitFrames(20)	
			end
    elseif args.Floor == 4 then
			if SV.beach_cave.Tutorial < 4 then
				SOUND:PlayFanfare("Fanfare/Note")
				UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_6"):ToLocal(), STRINGS:LocalKeyString(9)))
				SV.beach_cave.Tutorial = 4
				GAME:WaitFrames(20)	
			end
	elseif args.Floor == 5 then
			if SV.beach_cave.Tutorial < 5 then
				SOUND:PlayFanfare("Fanfare/Note")
				UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_7"):ToLocal()))
				UI:WaitShowDialogue(STRINGS:Format(RogueEssence.StringKey("TUTORIAL_8"):ToLocal(), STRINGS:LocalKeyString(7)))
				SV.beach_cave.Tutorial = 5
				GAME:WaitFrames(20)	
			end
		end
	end
end