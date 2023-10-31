
def 0 {
    sound_Stop();
    back_SetGround(LEVEL_S04P01A);
    screen_FadeIn(1, 0);
    message_SetFace(ACTOR_ATTENDANT1, FACE_PAIN, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...Wh-what?",
            }
        case 2:
            {
                english=" ...Wh-what?",
            }
        default:
            {
                english=" ...Wh-what?",
            }
    }
    message_KeyWait();
    screen_FadeOutAll(1, 60);
    message_CloseEnforce();
    CallCommon(CORO_FADE_OUT_ALL_AFTER);
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03B);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    camera_SetPositionMark(Position<'m1', 33, 25.5>);
    bgm_PlayFadeIn(BGM_OCEAN1, 160, 256);
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    WaitLockLives(5, ACTOR_PLAYER);
    Unlock(5);
    Wait(12);
    Unlock(7);
    Lock(3);
    Wait(15);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Owowow... That wasn\'t so good.",
            }
        case 2:
            {
                english=" Owowow... That didn\'t go well.",
            }
        default:
            {
                english=" Ouch! We didn\'t do too well...",
            }
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I guess if either of us faints,\nthe other one can\'t carry on!",
            }
        case 2:
            {
                english=" I guess if either of us faints,\nthe other one can\'t carry on!",
            }
        default:
            {
                english=" I guess if either of us faints,\nthe other one can\'t carry on!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...Could this be what they\'re\ncalling a mystery dungeon?",
            }
        case 2:
            {
                english=" ...Could this be what they\'re\ncalling a mystery dungeon?",
            }
        default:
            {
                english=" ...Could this be what they\'re\ncalling a mystery dungeon?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8967);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Hey! We don\'t have time\nfor this!",
            }
        case 2:
            {
                english=" Hey! This isn\'t the time for this!",
            }
        default:
            {
                english=" Oh! There\'s no time to waste!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We have to find [CS:N]Koffing[CR] and his\nbuddy to get my item back!",
            }
        case 2:
            {
                english=" We\'ve got to find [CS:N]Koffing[CR] and\nhis sidekick to recover my item!",
            }
        default:
            {
                english=" We need to catch [CS:N]Koffing[CR] and\nhis buddy and get my treasure back!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_DETERMINED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Let\'s roll, [hero]!",
            }
        case 2:
            {
                english=" Let\'s go, [hero]!",
            }
        default:
            {
                english=" Let\'s go, [hero]!",
            }
    }
    message_Close();
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(33152, Position<'m2', 12, 25.5>);
    }
    Wait(10);
    with (actor ACTOR_PLAYER) {
        MovePositionMark(33152, Position<'m3', 13, 25.5>);
    }
    Wait(60);
    bgm_FadeOut(60);
    screen2_FadeOut(0, 30);
    screen_FadeOut(1, 30);
    back2_SetMode(0);
    WaitBgm2(BGM_OCEAN1);
    main_EnterDungeon(1, 0);
    switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }
    main_EnterDungeon(-1, 0);
    hold;
    end;
}

def 1 for_actor(ACTOR_PLAYER) {
    SetDirection(DIR_RIGHT);
    SetAnimation(76);
    Lock(5);
    CallCommon(CORO_WAKEUP_FUNC);
    CallCommon(CORO_LOOK_AROUND_DOWN_FUNC);
    Lock(6);
    hold;
}

def 2 for_actor(ACTOR_ATTENDANT1) {
    SetDirection(DIR_LEFT);
    SetAnimation(76);
    Lock(7);
    CallCommon(CORO_WAKEUP_FUNC);
    CallCommon(CORO_LOOK_AROUND_FUNC);
    Unlock(3);
    Lock(8);
    hold;
}
