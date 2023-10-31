
def 0 {
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03B);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    Wait(1);
    supervision_SpecialActing(21, 600, 0);
    supervision2_SpecialActing(21, 600, 0);
    with (actor ACTOR_PLAYER) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_NPC_DOGAASU) {
        SetOutputAttribute(2);
    }
    with (object OBJECT_G01P01A1_93) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        SetAnimation(5);
    }
    screen2_FlushOut(1, 0, 8, 0, 0, 0);
    screen_FlushOut(1, 0, 8, 0, 0, 0);
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Sorry, kiddo. We\'ll take that!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_ZUBATTO) {
        Move2PositionOffset(1, -28, 24);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    with (object OBJECT_G01P01A1_93) {
        Destroy();
    }
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SHOCKED_MIRRORED, 3);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_TOP_L_CENTER);
    message_FacePositionOffset(2, 1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Aaaah!",
            }
        case 2:
            {
                english=" Aaaah!",
            }
        default:
            {
                english=" Aaaah!",
            }
    }
    Wait(10);
    with (actor ACTOR_NPC_ZUBATTO) {
        Slide2PositionOffset(1, 28, -24);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2Direction(4, 10, DIR_LEFT);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_ZUBATTO);
    }
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_ZUBATTO);
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Whoa-ho-ho![K] Not gonna make a\nmove to get that back?[K] What\'s the matter?[K]\nToo scared?",
    });
    message_Talk({
        english=" I didn\'t expect that you\'d be such\na big coward!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_DOGAASU) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_ZUBATTO);
    }
    WaitExecuteLives(ACTOR_NPC_DOGAASU);
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_DOGAASU);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    message_Talk({
        english=" Come on. Let\'s get out of here.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_DOGAASU) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    WaitExecuteLives(ACTOR_NPC_DOGAASU);
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" See you around, chicken.[K]\nHeh-heh-heh.",
    });
    message_Close();
    with (actor ACTOR_NPC_DOGAASU) {
        MovePositionMark(1, Position<'m1', 12, 26.5>);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2Direction(4, 10, DIR_DOWNLEFT);
    }
    screen2_FadeOut(0, 30);
    screen_FadeOut(1, 30);
    back2_SetMode(0);
    screen2_FlushIn(1, 0, 1, 0, 0, 0);
    screen_FlushIn(1, 0, 1, 0, 0, 0);
    supervision_SpecialActing(3, 0, 0);
    supervision2_SpecialActing(3, 0, 0);
    end;
}
