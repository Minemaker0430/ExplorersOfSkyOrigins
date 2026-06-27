require 'eos.common'
require 'eos.ExplorerEssentials'
require 'eos.CharacterActions'

-- Package name
local drenched_bluff_end = {}

-------------------------------
-- Map Callbacks
-------------------------------
---drenched_bluff_end.Init(map)
--Engine callback function
function drenched_bluff_end.Init(map)

    COMMON.RespawnStarterPartner()
end

---drenched_bluff_end.Enter(map)
--Engine callback function
function drenched_bluff_end.Enter(map)

    if SV.Progression.Chapter == 2 then
        drenched_bluff_end.CH2_FoundPearl()
    else
        drenched_bluff_end.COMMON_NothingHere()
    end

end

---drenched_bluff_end.Exit(map)
--Engine callback function
function drenched_bluff_end.Exit(map)


end

---drenched_bluff_end.Update(map)
--Engine callback function
function drenched_bluff_end.Update(map)


end

---drenched_bluff_end.GameSave(map)
--Engine callback function
function drenched_bluff_end.GameSave(map)


end

---drenched_bluff_end.GameLoad(map)
--Engine callback function
function drenched_bluff_end.GameLoad(map)

  GAME:FadeIn(20)

end

-------------------------------
-- Entities Callbacks
-------------------------------
---
function drenched_bluff_end.COMMON_NothingHere()
    --[[
def 0 {
    sound_Stop();
    back_SetDungeonBanner(3, 0);
    screen_FadeIn(1, 16);
    Wait(60);
    screen_FadeOut(1, 16);
    Wait(15);
    back_SetGround(LEVEL_D02P31A);
    if ( $PERFORMANCE_PROGRESS_LIST[7] ) {
        @label_0;
        supervision_Acting(1);
        camera_SetMyself<performer 0>();
        screen_FadeIn(1, 30);
        bgm_PlayFadeIn(BGM_IN_THE_DEPTHS_OF_THE_PIT, 0, 256);
        MovePositionMark<actor ACTOR_PLAYER_APPOINT>(1, Position<'m4', 30, 23.5>);
        MovePositionMark<actor ACTOR_ADVENTURE_NPC1>(1, Position<'m5', 33, 25.5>);
        MovePositionMark<actor ACTOR_ADVENTURE_NPC2>(1, Position<'m6', 27, 25.5>);
        MovePositionMark<actor ACTOR_ADVENTURE_NPC3>(1, Position<'m7', 30, 27.5>);
        WaitExecuteLives(ACTOR_PLAYER_APPOINT);
        Wait(15);
        ExecuteCommon<actor ACTOR_PLAYER_APPOINT>(CORO_LOOK_AROUND_FUNC_SERIES, 0);
        Wait(12);
        ExecuteCommon<actor ACTOR_ADVENTURE_NPC1>(CORO_LOOK_AROUND_LEFT_FUNC_SERIES, 0);
        Wait(4);
        ExecuteCommon<actor ACTOR_ADVENTURE_NPC2>(CORO_LOOK_AROUND_DOWN_FUNC_SERIES, 0);
        Wait(7);
        ExecuteCommon<actor ACTOR_ADVENTURE_NPC3>(CORO_LOOK_AROUND_RIGHT_FUNC_SERIES, 0);
        WaitExecuteLives(ACTOR_PLAYER_APPOINT);
        Wait(15);
        @label_1;
        message_Mail({
            english="[CN]This appears to be the end of the dungeon.",
        });
        message_Mail({
            english="""
                [CN]It's impossible to go any farther.[K]
                [CN]It's time to go back.
            """,
        });
        message_Close();
        bgm_FadeOut(120);
        screen_FadeOut(1, 60);
        WaitBgm(BGM_IN_THE_DEPTHS_OF_THE_PIT);
        message_Explanation({
            english="""
                [CN][player] cleared [CS:P]Drenched Bluff[CR]!
                [CN]Very impressive!
            """,
        });
        message_Close();
        end;
    } else {
        supervision_Acting(0);
        camera_SetMyself<performer 0>();
        screen_FadeIn(1, 30);
        bgm_PlayFadeIn(BGM_IN_THE_DEPTHS_OF_THE_PIT, 0, 256);
        MovePositionMark<actor ACTOR_ATTENDANT1>(1, Position<'m0', 28, 23.5>);
        MovePositionMark<actor ACTOR_PLAYER>(1, Position<'m1', 32, 23.5>);
        MovePositionMark<actor ACTOR_UNIT_NPC1>(1, Position<'m2', 30, 27.5>);
        MovePositionMark<actor ACTOR_UNIT_NPC2>(1, Position<'m3', 33, 26.5>);
        WaitExecuteLives(ACTOR_PLAYER);
        Wait(15);
        ExecuteCommon<actor ACTOR_ATTENDANT1>(CORO_LOOK_AROUND_FUNC_SERIES, 0);
        Wait(12);
        ExecuteCommon<actor ACTOR_PLAYER>(CORO_LOOK_AROUND_LEFT_FUNC_SERIES, 0);
        Wait(4);
        ExecuteCommon<actor ACTOR_UNIT_NPC1>(CORO_LOOK_AROUND_DOWN_FUNC_SERIES, 0);
        Wait(7);
        ExecuteCommon<actor ACTOR_UNIT_NPC2>(CORO_LOOK_AROUND_RIGHT_FUNC_SERIES, 0);
        WaitExecuteLives(ACTOR_PLAYER);
        Wait(15);
        jump @label_1;
    }
}
]]--
end

function drenched_bluff_end.CH2_FoundPearl()
    --[[
def 0 {
    sound_Stop();
    if ( variation ) {
        @label_0;
        switch ( ProcessSpecial(53, -1, 0) ) { }
        message_SetWaitMode(300, 300);
        message_Explanation({
            english="""
                [CN]Thanks for playing!
                [CN]We hope you enjoyed
                [CN]the demo!
            """,
        });
        message_KeyWait();
        switch ( ProcessSpecial(PROCESS_SPECIAL_JUMP_TO_TITLE_SCREEN, 0, 0) ) { }
        end;
    } else {
        back_SetDungeonBanner(3, 0);
        screen_FadeIn(1, 16);
        Wait(60);
        screen_FadeOut(1, 16);
        Wait(15);
        switch ( scn($SCENARIO_MAIN)[1] ) {
            case 3:
                $SCENARIO_MAIN = scn[3, 6];
                @label_3;
                back_SetGround(LEVEL_D02P31A);
                supervision_Acting(0);
                camera_SetMyself<performer 0>();
                Wait(1);
                MovePositionMark<actor ACTOR_PLAYER>(1, Position<'m0', 32, 35.5>);
                MovePositionMark<actor ACTOR_ATTENDANT1>(1, Position<'m1', 28, 35.5>);
                bgm_PlayFadeIn(BGM_IN_THE_DEPTHS_OF_THE_PIT, 0, 256);
                screen_FadeIn(1, 30);
                WaitExecuteLives(ACTOR_PLAYER);
                WaitExecuteLives(ACTOR_ATTENDANT1);
                se_Play(8978);
                SetEffect<actor ACTOR_ATTENDANT1>(EFFECT_EXCLAMATION_MARK, 3);
                WaitEffect<actor ACTOR_ATTENDANT1>();
                WaitExecuteLives(ACTOR_ATTENDANT1);
                message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Hey! There it is!",
                        }
                    case 2:
                        {
                            english=" Oh! Look at that!",
                        }
                    default:
                        {
                            english=" Oh! Over there!",
                        }
                }
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                MovePositionMark<performer 0>(1, Position<'m2', 30, 24.5>);
                MovePositionMark<actor ACTOR_PLAYER>(1, Position<'m3', 32, 25.5>);
                Wait(5);
                MovePositionMark<actor ACTOR_ATTENDANT1>(1, Position<'m4', 28, 25.5>);
                WaitExecuteLives(ACTOR_PLAYER);
                Turn2Direction<actor ACTOR_PLAYER>(4, 10, DIR_UPLEFT);
                WaitExecuteLives(ACTOR_ATTENDANT1);
                Turn2Direction<actor ACTOR_ATTENDANT1>(4, 10, DIR_UPRIGHT);
                WaitExecuteLives(ACTOR_ATTENDANT1);
                Wait(30);
                Turn2DirectionLives<actor ACTOR_ATTENDANT1>(4, 10, ACTOR_PLAYER);
                WaitExecuteLives(ACTOR_ATTENDANT1);
                Turn2DirectionLives<actor ACTOR_PLAYER>(4, 10, ACTOR_ATTENDANT1);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" This has to be [CS:N]Spoink[CR]'s pearl!",
                        }
                    case 2:
                        {
                            english=" This must be [CS:N]Spoink[CR]'s pearl!",
                        }
                    default:
                        {
                            english=" This has to be [CS:N]Spoink[CR]'s pearl!",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Let's take it back right now!",
                        }
                    case 2:
                        {
                            english=" Let's hurry back with it!",
                        }
                    default:
                        {
                            english=" Quick! Let's take it back!",
                        }
                }
                message_Close();
                MovePositionOffset<actor ACTOR_PLAYER>(0.7969, -16, -16);
                Turn2Direction<actor ACTOR_ATTENDANT1>(4, 10, DIR_UPRIGHT);
                WaitExecuteLives(ACTOR_ATTENDANT1);
                Wait(30);
                bgm_FadeOut(120);
                screen_FadeOut(1, 60);
                WaitBgm(BGM_IN_THE_DEPTHS_OF_THE_PIT);
                switch ( message_Menu(MENU_DUNGEON_TEAM_RETURNS_FROM_MAP) ) { }
                end;
            default:
                @label_2;
                $SCENARIO_MAIN = scn[3, 7];
                jump @label_3;
        }
    }
}
]]--

    GAME:CutsceneMode(true)

	local pTalkKind = SV.Personality.PartnerTalkKind
	SOUND:StopBGM()

	UI:WaitShowTitle(GAME:GetCurrentGround().Name:ToLocal(), 16)
	GAME:WaitFrames(60)
	UI:WaitHideTitle(16)
  
	GAME:WaitFrames(15)
    
	-- TODO: $SCENARIO_MAIN = scn[3, 6]
	-- TODO: @label_3
	-- back_SetGround(LEVEL_D02P31A) (Should be the map you're currently on, or the map it sends you to next)
	-- ### supervision_Acting(0) [IRRELEVANT]
	ExplorerEssentials.SetupCameraPos(29.5, 36) -- 29.5, 36
    ExplorerEssentials.SetupInitialPos(CH('PLAYER'), 31.5, 42.5, Direction.Up) -- player 31.5, 42.5
    ExplorerEssentials.SetupInitialPos(CH('PARTNER'), 27.5, 43.5, Direction.Up) -- partner 27.5, 43.5
    ExplorerEssentials.SetupInitialPos(OBJ('SpoinkPearl'), 29.5, 22, Direction.Down) -- pearl 29.5, 22 (obj d02p31a1)

	GAME:WaitFrames(1)
	
    local coro1 = TASK:BranchCoroutine(function ()
        GROUND:MoveToPosition(CH('PLAYER'), 256, 284, false, 2)
    end)
    local coro2 = TASK:BranchCoroutine(function ()
        GROUND:MoveToPosition(CH('PARTNER'), 224, 284, false, 2)
    end)
    local coro3 = TASK:BranchCoroutine(function () 
        SOUND:PlayBGM("006 - In The Depths Of The Pit.ogg", true)
	    GAME:FadeIn(30)
    end)
    TASK:JoinCoroutines({coro1, coro2, coro3})
	
	-- !! WaitExecuteLives(ACTOR_PLAYER)
	-- !! WaitExecuteLives(ACTOR_ATTENDANT1)

	SOUND:PlayBattleSE("EVT_Emote_Exclaim_2")
	GROUND:CharSetEmote(CH('PARTNER'), "exclaim", 1)
	GAME:WaitFrames(30)
	-- !! WaitExecuteLives(ACTOR_ATTENDANT1)

	UI:SetSpeaker(CH('PARTNER'))
	UI:SetSpeakerEmotion("Normal")
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_PARTNER_1_'..tostring(pTalkKind)]))

    local coro1 = TASK:BranchCoroutine(function () -- camera
        ExplorerEssentials.MoveCameraAtSpeed(240, 196, 2, false)
    end)
    local coro2 = TASK:BranchCoroutine(function () -- player
        GROUND:MoveToPosition(CH('PLAYER'), 256, 204, false, 1)
        GROUND:CharAnimateTurnTo(CH('PLAYER'), Dir8.UpLeft, 4)
    end)
    local coro3 = TASK:BranchCoroutine(function () -- partner
        GAME:WaitFrames(5)
	    GROUND:MoveToPosition(CH('PARTNER'), 224, 204, false, 1)
        GROUND:CharAnimateTurnTo(CH('PARTNER'), Dir8.UpRight, 4)
    end)
    TASK:JoinCoroutines({coro1, coro2, coro3})
	
    GAME:WaitFrames(30)
	GROUND:CharTurnToCharAnimated(CH('PARTNER'), CH('PLAYER'), 4)
	-- !! WaitExecuteLives(ACTOR_ATTENDANT1)

	local coro1 = TASK:BranchCoroutine(function () 
        GROUND:CharTurnToCharAnimated(CH('PLAYER'), CH('PARTNER'), 4)
    end)
    local coro2 = TASK:BranchCoroutine(function () 
        UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_PARTNER_2_'..tostring(pTalkKind)], CH('Spoink'):GetDisplayName()))
    end)
    TASK:JoinCoroutines({coro1, coro2})
	
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_PARTNER_3_'..tostring(pTalkKind)]))

    local coro1 = TASK:BranchCoroutine(function () 
        ExplorerEssentials.MoveToPositionOffset(CH('PLAYER'), -16, -16, false, 1)
    end)
    local coro2 = TASK:BranchCoroutine(function () 
        GROUND:CharAnimateTurnTo(CH('PARTNER'), Dir8.UpRight, 4)
    end)
	TASK:JoinCoroutines({coro1, coro2})
	
	-- !! WaitExecuteLives(ACTOR_ATTENDANT1)

    local coro1 = TASK:BranchCoroutine(function () 
        GAME:WaitFrames(30)
	    GAME:FadeOut(false, 60)
    end)
    local coro2 = TASK:BranchCoroutine(function () 
        SOUND:FadeOutBGM(120)
    end)
	TASK:JoinCoroutines({coro1, coro2})

	-- TODO: WaitBgm(BGM_IN_THE_DEPTHS_OF_THE_PIT)
	-- TODO: switch ( message_Menu(MENU_DUNGEON_TEAM_RETURNS_FROM_MAP) ) { }                 end

    SV.Progression.SectionFlag = 2
    
    ExplorerEssentials.EndStoryDungeon(RogueEssence.Data.GameProgress.ResultType.Cleared, "hub", -1, 10, 0)
end

return drenched_bluff_end