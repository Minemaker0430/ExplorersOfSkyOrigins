
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
end

function CH2_EntranceAfterFail()
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
end