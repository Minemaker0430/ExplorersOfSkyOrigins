
def 0 {
    bgm_PlayFadeIn(BGM_MEMORIES_RETURNED, 0, 256);
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03B);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    screen2_FlushOut(1, 0, 8, 0, 0, 0);
    screen_FlushOut(1, 0, 8, 0, 0, 0);
    supervision_SpecialActing(21, 600, 0);
    supervision2_SpecialActing(21, 600, 0);
    with (actor ACTOR_ATTENDANT1) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_PLAYER) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_PLAYER) {
        SetAnimation(76);
    }
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    Wait(30);
    with (performer 0) {
        MovePositionMark(1, Position<'m1', 52, 22>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m2', 52, 21.5>);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Waah![K] Someone has collapsed on\nthe sand!",
            }
        case 2:
            {
                english=" Waah![K] Someone has collapsed on\nthe sand!",
            }
        default:
            {
                english=" Waah![K] Someone has collapsed on\nthe sand!",
            }
    }
    message_Close();
    with (performer 0) {
        MovePositionMark(3, Position<'m3', 38.5, 22>);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(1024);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(3, Position<'m4', 39, 21.5>);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(768);
    }
    Wait(10);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" What happened?![K] Are you OK?",
            }
        case 2:
            {
                english=" What happened?![K] Are you OK?",
            }
        default:
            {
                english=" What happened?![K] Are you OK?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    screen2_FadeOut(0, 30);
    screen_FadeOut(1, 30);
    back2_SetMode(0);
    screen2_FlushIn(1, 0, 1, 0, 0, 0);
    screen_FlushIn(1, 0, 1, 0, 0, 0);
    supervision_SpecialActing(3, 0, 0);
    supervision2_SpecialActing(3, 0, 0);
    end;
}
