require 'eos.common'
require 'eos.CharacterActions'
require 'eos.ExplorerEssentials'

-- Package name
local drenched_bluff_entrance = {}

-------------------------------
-- Map Callbacks
-------------------------------
---drenched_bluff_entrance.Init(map)
--Engine callback function
function drenched_bluff_entrance.Init(map)

    COMMON.RespawnStarterPartner()
end

---drenched_bluff_entrance.Enter(map)
--Engine callback function
function drenched_bluff_entrance.Enter(map)

    if SV.Progression.Chapter == 2 and SV.drenched_bluff.TimesFailed > 0 then
        drenched_bluff_entrance.CH2_EntranceAfterFail()
    elseif SV.Progression.Chapter == 2 then
        drenched_bluff_entrance.CH2_Entrance()
    else
        GAME:CutsceneMode(false)
        GAME:EnterDungeon('drenched_bluff', 0, 0, 0, RogueEssence.Data.GameProgress.DungeonStakes.Risk, true, false)
    end

end

---drenched_bluff_entrance.Exit(map)
--Engine callback function
function drenched_bluff_entrance.Exit(map)


end

---drenched_bluff_entrance.Update(map)
--Engine callback function
function drenched_bluff_entrance.Update(map)


end

---drenched_bluff_entrance.GameSave(map)
--Engine callback function
function drenched_bluff_entrance.GameSave(map)


end

---drenched_bluff_entrance.GameLoad(map)
--Engine callback function
function drenched_bluff_entrance.GameLoad(map)

  GAME:EnterDungeon('drenched_bluff', 0, 0, 0, RogueEssence.Data.GameProgress.DungeonStakes.Risk, true, false)

end

-------------------------------
-- Entities Callbacks
-------------------------------






function drenched_bluff_entrance.CH2_Entrance()
    --[[
def 0 {
    sound_Stop();
    back_SetGround(LEVEL_D02P11A);
    if ( variation ) {
        @label_0;
        bgm_Stop();
        message_Explanation({
            english="""
                You wake up one day, only to realize that
                you've been turned into a Pokémon and are
                now in a world inhabited only by Pokémon!
            """,
        });
        message_Explanation({
            english="""
                It's up to you to form an exploration team
                and embark on the adventure of a lifetime!
            """,
        });
        message_Explanation({
            english="""
                Welcome to the fascinating world of
                [CS:L]Pokémon Mystery Dungeon: Explorers of Sky[CR]!
                Now YOU are the Pokémon!
            """,
        });
        screen_FadeOut(1, 30);
        $SCENARIO_MAIN = scn[3, 3];
        main_EnterDungeon(123, 0);
        switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }
        main_EnterDungeon(-1, 0);
        hold;
        end;
    } else {
        supervision_Acting(0);
        camera_SetMyself<performer 0>();
        screen_FadeIn(1, 30);
        bgm_PlayFadeIn(BGM_DRENCHED_BLUFF, 0, 256);
        MovePositionMark<actor ACTOR_PLAYER>(1, Position<'m0', 34.5, 19.5>);
        MovePositionMark<actor ACTOR_ATTENDANT1>(1, Position<'m1', 31, 19.5>);
        WaitExecuteLives(ACTOR_ATTENDANT1);
        Wait(30);
        Turn2DirectionLives<actor ACTOR_ATTENDANT1>(4, 10, ACTOR_PLAYER);
        WaitExecuteLives(ACTOR_ATTENDANT1);
        Turn2DirectionLives<actor ACTOR_PLAYER>(4, 10, ACTOR_ATTENDANT1);
        message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
        message_SwitchTalk ($PARTNER_TALK_KIND) {
            case 1:
                {
                    english="""
                         This must be the
                        bluff's entrance.
                    """,
                }
            case 2:
                {
                    english="""
                         This must be the
                        bluff's entrance.
                    """,
                }
            default:
                {
                    english="""
                         This must be the
                        bluff's entrance.
                    """,
                }
        }
        message_SwitchTalk ($PARTNER_TALK_KIND) {
            case 1:
                {
                    english="""
                         [CS:N]Spoink[CR]'s mission description said
                        the pearl is deep down on the B7F level.
                    """,
                }
            case 2:
                {
                    english="""
                         [CS:N]Spoink[CR]'s mission description said
                        the pearl is deep down on the B7F level.
                    """,
                }
            default:
                {
                    english="""
                         [CS:N]Spoink[CR]'s mission description said
                        the pearl is deep down on the B7F level.
                    """,
                }
        }
        message_SwitchTalk ($PARTNER_TALK_KIND) {
            case 1:
                {
                    english="""
                         It's supposed to be a really
                        dangerous place. We'd better be careful.
                    """,
                }
            case 2:
                {
                    english="""
                         It sounds like a seriously
                        dangerous place. Let's be careful.
                    """,
                }
            default:
                {
                    english="""
                         It's supposedly very dangerous.
                        Let's be really careful.
                    """,
                }
        }
        message_SwitchTalk ($PARTNER_TALK_KIND) {
            case 1:
                {
                    english=" Let's do our best, [hero]!",
                }
            case 2:
                {
                    english=" Let's do our best, [hero]!",
                }
            default:
                {
                    english=" Let's do our best, [hero]!",
                }
        }
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        SetAnimation<actor ACTOR_PLAYER>(71);
        SetAnimation<actor ACTOR_ATTENDANT1>(71);
        WaitAnimation<actor ACTOR_PLAYER>();
        WaitAnimation<actor ACTOR_ATTENDANT1>();
        WaitExecuteLives(ACTOR_PLAYER);
        WaitExecuteLives(ACTOR_ATTENDANT1);
        SetAnimation<actor ACTOR_PLAYER>(2);
        SetAnimation<actor ACTOR_ATTENDANT1>(2);
        Wait(30);
        MovePositionMark<actor ACTOR_PLAYER>(1, Position<'m2', 33, 11.5>);
        Wait(20);
        MovePositionMark<actor ACTOR_ATTENDANT1>(1, Position<'m3', 33, 11.5>);
        Wait(20);
        screen_FadeOut(1, 30);
        $SCENARIO_MAIN = scn[3, 3];
        main_EnterDungeon(3, 0);
        switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }
        main_EnterDungeon(-1, 0);
        hold;
    }
}
]]--

	local pTalkKind = SV.Personality.PartnerTalkKind
	SOUND:StopBGM()
    GAME:CutsceneMode(true)
	
	ExplorerEssentials.SetupCameraPos(32, 16.5)
    ExplorerEssentials.SetupInitialPos(CH('PLAYER'), 34, 33, Direction.Up)
    ExplorerEssentials.SetupInitialPos(CH('PARTNER'), 30, 31, Direction.Up)
	
    GAME:FadeIn(30)
	SOUND:PlayBGM("BGM_DUN_DrenchedBluff.ogg", true)
	
    local coro1 = TASK:BranchCoroutine(function ()
        GROUND:MoveToPosition(CH('PLAYER'), 272, 152, false, 1)
    end)
    local coro2 = TASK:BranchCoroutine(function ()
        GROUND:MoveToPosition(CH('PARTNER'), 240, 152, false, 1)
    end)
    TASK:JoinCoroutines({coro1, coro2})
	-- !! WaitExecuteLives(ACTOR_ATTENDANT1)

	GAME:WaitFrames(30)
	GROUND:CharTurnToCharAnimated(CH('PARTNER'), CH('PLAYER'), 4)
	-- !! WaitExecuteLives(ACTOR_ATTENDANT1)

    local coro1 = TASK:BranchCoroutine(function ()
        GROUND:CharTurnToCharAnimated(CH('PLAYER'), CH('PARTNER'), 4)
    end)
    local coro2 = TASK:BranchCoroutine(function ()
        UI:SetSpeaker(CH('PARTNER'))
	    UI:SetSpeakerEmotion("Normal")
	    UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_PARTNER_1']))
    end)
	TASK:JoinCoroutines({coro1, coro2})
    
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_PARTNER_2'], CH('Spoink'):GetDisplayName()))
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_PARTNER_3_'..tostring(pTalkKind)]))
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_PARTNER_4'], CH('PLAYER'):GetDisplayName()))

	local coro1 = TASK:BranchCoroutine(function () GROUND:CharWaitAnim(CH('PLAYER'), "Nod") end)
	local coro2 = TASK:BranchCoroutine(function () GROUND:CharWaitAnim(CH('PARTNER'), "Nod") end)
	TASK:JoinCoroutines({coro1, coro2})

    GAME:WaitFrames(30)

    local coro1 = TASK:BranchCoroutine(function ()
        GROUND:MoveToPosition(CH('PLAYER'), 260, 88, false, 1)
    end)
	local coro2 = TASK:BranchCoroutine(function ()
        GAME:WaitFrames(20)
	    GROUND:MoveToPosition(CH('PARTNER'), 260, 88, false, 1)
    end)
    local coro3 = TASK:BranchCoroutine(function ()
        GAME:WaitFrames(40)
	    GAME:FadeOut(false, 30)
    end)
	TASK:JoinCoroutines({coro1, coro2, coro3})

	-- TODO: $SCENARIO_MAIN = scn[3, 3]
	-- TODO: main_EnterDungeon(3, 0)
	-- TODO: switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }         main_EnterDungeon(-1, 0)
	-- TODO: hold

    GAME:CutsceneMode(false)
    GAME:EnterDungeon('drenched_bluff', 0, 0, 0, RogueEssence.Data.GameProgress.DungeonStakes.Risk, true, false)

end

function drenched_bluff_entrance.CH2_EntranceAfterFail()
    --[[
    
def 0 {
    back_SetGround(LEVEL_D02P11A);
    supervision_Acting(0);
    camera_SetMyself<performer 0>();
    screen_FadeIn(1, 30);
    bgm_PlayFadeIn(BGM_DRENCHED_BLUFF, 0, 256);
    MovePositionMark<actor ACTOR_PLAYER>(1, Position<'m0', 34.5, 19.5>);
    MovePositionMark<actor ACTOR_ATTENDANT1>(1, Position<'m1', 31, 19.5>);
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(45);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english="""
                     [CS:N]Spoink[CR]'s pearl should be down on
                    the B7F level.
                """,
            }
        case 2:
            {
                english="""
                     [CS:N]Spoink[CR]'s pearl should be down on
                    the B7F level.
                """,
            }
        default:
            {
                english="""
                     [CS:N]Spoink[CR]'s pearl should be down on
                    the B7F level.
                """,
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Turn2DirectionLives<actor ACTOR_ATTENDANT1>(4, 10, ACTOR_PLAYER);
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Turn2DirectionLives<actor ACTOR_PLAYER>(4, 10, ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english="""
                     Come on! This time, let's get
                    this job done, [hero]!
                """,
            }
        case 2:
            {
                english="""
                     OK, let's hang in and finish the
                    job this time, [hero]!
                """,
            }
        default:
            {
                english="""
                     Let's hang in there and finish
                    the job this time, [hero]!
                """,
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    MovePositionMark<actor ACTOR_PLAYER>(1, Position<'m2', 33, 11.5>);
    Wait(20);
    MovePositionMark<actor ACTOR_ATTENDANT1>(1, Position<'m3', 33, 11.5>);
    Wait(20);
    screen_FadeOut(1, 30);
    switch ( scn($SCENARIO_MAIN)[1] ) {
        case 3:
            @label_0;
            $SCENARIO_MAIN = scn[3, 4];
            @label_2;
            main_EnterDungeon(3, 0);
            switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }
            main_EnterDungeon(-1, 0);
            hold;
            end;
        case 4:
            $SCENARIO_MAIN = scn[3, 5];
            jump @label_2;
        default:
            jump @label_2;
    }
}
    ]]--

	local pTalkKind = SV.Personality.PartnerTalkKind

    GAME:CutsceneMode(true)
	
    ExplorerEssentials.SetupCameraPos(32, 16.5)
    ExplorerEssentials.SetupInitialPos(CH('PLAYER'), 34, 33, Direction.Up)
    ExplorerEssentials.SetupInitialPos(CH('PARTNER'), 30, 31, Direction.Up)

	GAME:FadeIn(30)
	SOUND:PlayBGM("BGM_DUN_DrenchedBluff.ogg", true)
	
    local coro1 = TASK:BranchCoroutine(function ()
        GROUND:MoveToPosition(CH('PLAYER'), 272, 152, false, 1)
    end)
    local coro2 = TASK:BranchCoroutine(function ()
        GROUND:MoveToPosition(CH('PARTNER'), 240, 152, false, 1)
    end)
    TASK:JoinCoroutines({coro1, coro2})
	-- !! WaitExecuteLives(ACTOR_ATTENDANT1)

	GAME:WaitFrames(45)
	UI:SetSpeaker(CH('PARTNER'))
	UI:SetSpeakerEmotion("Normal")
	UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_S2_PARTNER_1'], CH('Spoink'):GetDisplayName()))

	GROUND:CharTurnToCharAnimated(CH('PARTNER'), CH('PLAYER'), 4)
	-- !! WaitExecuteLives(ACTOR_ATTENDANT1)

    local coro1 = TASK:BranchCoroutine(function ()
        GROUND:CharTurnToCharAnimated(CH('PLAYER'), CH('PARTNER'), 4)
    end)
    local coro2 = TASK:BranchCoroutine(function ()
        UI:WaitShowDialogue(STRINGS:Format(STRINGS.MapStrings['CH2_S2_PARTNER_2_'..tostring(pTalkKind)], CH('PLAYER'):GetDisplayName()))
    end)
	TASK:JoinCoroutines({coro1, coro2})
	
	local coro1 = TASK:BranchCoroutine(function ()
        GROUND:MoveToPosition(CH('PLAYER'), 260, 88, false, 1)
    end)
	local coro2 = TASK:BranchCoroutine(function ()
        GAME:WaitFrames(20)
	    GROUND:MoveToPosition(CH('PARTNER'), 260, 88, false, 1)
    end)
    local coro3 = TASK:BranchCoroutine(function ()
        GAME:WaitFrames(40)
	    GAME:FadeOut(false, 30)
    end)
	TASK:JoinCoroutines({coro1, coro2, coro3})
    
	-- TODO: switch ( scn($SCENARIO_MAIN)[1] ) {         case 3:             @label_0
	-- TODO: $SCENARIO_MAIN = scn[3, 4]
	-- TODO: @label_2
	-- TODO: main_EnterDungeon(3, 0)
	-- TODO: switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }             main_EnterDungeon(-1, 0)
	-- TODO: hold
	-- TODO case: case 4:             $SCENARIO_MAIN = scn[3, 5]
	-- TODO: jump @label_2
	-- TODO case: default:             jump @label_2

    GAME:CutsceneMode(false)
    GAME:EnterDungeon('drenched_bluff', 0, 0, 0, RogueEssence.Data.GameProgress.DungeonStakes.Risk, true, false)

end

return drenched_bluff_entrance