
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
    supervision_SpecialActing(21, 660, 0);
    supervision2_SpecialActing(21, 660, 0);
    with (actor ACTOR_ATTENDANT1) {
        SetOutputAttribute(2);
    }
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    Wait(30);
    Wait(60);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(8, 10, DIR_LEFT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" The view was like this that\ntime too...",
            }
        case 2:
            {
                english=" The view was like this that\ntime too...",
            }
        default:
            {
                english=" The view was like this that\ntime too...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(30);
    with (performer 0) {
        MovePositionMark(32972, Position<'m1', 48, 22.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(32972, Position<'m2', 48, 22.5>);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(60);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" The [CS:N]Krabby[CR] blowing all those\nbubbles along the beach...",
            }
        case 2:
            {
                english=" The [CS:N]Krabby[CR] blowing all those\nbubbles along the beach...",
            }
        default:
            {
                english=" The [CS:N]Krabby[CR] blowing all those\nbubbles along the beach...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I noticed someone...right here...",
            }
        case 2:
            {
                english=" I noticed someone...right here...",
            }
        default:
            {
                english=" I noticed someone...right here...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" [hero] was...[K]\nunconscious...",
            }
        case 2:
            {
                english=" [hero] was...[K]\nunconscious...",
            }
        default:
            {
                english=" [hero] was...[K]\nunconscious...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That was when...[K][hero]\nand I...",
            }
        case 2:
            {
                english=" That was when...[K][hero]\nand I...",
            }
        default:
            {
                english=" That was when...[K][hero]\nand I...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That was when our adventure\nbegan.",
            }
        case 2:
            {
                english=" That was when our adventure\nbegan.",
            }
        default:
            {
                english=" That was when our adventure\nbegan.",
            }
    }
    message_Close();
    Wait(30);
    screen2_WhiteOut(0, 60);
    screen_WhiteOut(1, 60);
    supervision_SpecialActing(3, 0, 0);
    supervision2_SpecialActing(3, 0, 0);
    Wait(30);
    end;
}
