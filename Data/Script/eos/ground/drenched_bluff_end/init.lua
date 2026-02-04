
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
end