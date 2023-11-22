
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
    supervision_SpecialActing(21, 720, 0);
    supervision2_SpecialActing(21, 720, 0);
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    Wait(30);
    WaitLockLives(5, ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I remember it all so fondly.",
            }
        case 2:
            {
                english=" I remember it all so fondly.",
            }
        default:
            {
                english=" I remember it all so fondly.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" All those memories of my time\nwith [hero]...",
            }
        case 2:
            {
                english=" All those memories of my time\nwith [hero]...",
            }
        default:
            {
                english=" All those memories of my time\nwith [hero]...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...Memories...[K]of [hero]...",
            }
        case 2:
            {
                english=" ...Memories...[K]of [hero]...",
            }
        default:
            {
                english=" ...Memories...[K]of [hero]...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(30);
    clear $EVENT_LOCAL;
    Unlock(5);
    message_SetFace(ACTOR_ATTENDANT1, FACE_TEARY_EYED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But now...[K][hero] is gone.",
            }
        case 2:
            {
                english=" But now...[K][hero] is gone.",
            }
        default:
            {
                english=" But now...[K][hero] is gone.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" And [hero]...[K]isn\'t here\nanymore...",
            }
        case 2:
            {
                english=" And [hero]...[K]isn\'t here\nanymore...",
            }
        default:
            {
                english=" And [hero]...[K]isn\'t here\nanymore...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    bgm_FadeOut(210);
    Wait(90);
    bgm2_PlayFadeIn(BGM_OCEAN1, 120, 190);
    bgm2_ChangeVolume(0, 190);
    $EVENT_LOCAL = 1;
    WaitLockLives(6, ACTOR_ATTENDANT1);
    Unlock(6);
    WaitLockLives(7, ACTOR_ATTENDANT1);
    with (actor ACTOR_NPC_BIPPA) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_NPC_BIPPA) {
        SetOutputAttribute(1);
    }
    with (actor ACTOR_NPC_BIPPA) {
        MovePositionMark(1, Position<'m1', 61, 22.5>);
    }
    WaitExecuteLives(ACTOR_NPC_BIPPA);
    with (actor ACTOR_NPC_BIPPA) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    with (actor ACTOR_NPC_BIPPA) {
        ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
    }
    message_SetFace(ACTOR_NPC_BIPPA, FACE_NORMAL, FACE_POS_TOP_R_FACEINW);
    message_Talk({
        english=" Wah! [partner]!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_BIPPA) {
        SetAnimation(1024);
    }
    with (actor ACTOR_NPC_BIPPA) {
        MovePositionOffset(33152, -40, 0);
    }
    WaitExecuteLives(ACTOR_NPC_BIPPA);
    with (actor ACTOR_NPC_BIPPA) {
        MovePositionMark(33152, Position<'m2', 51, 22.5>);
    }
    WaitExecuteLives(ACTOR_NPC_BIPPA);
    message_SetFace(ACTOR_NPC_BIPPA, FACE_SAD, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" You\'ve been gone so long, I took\nto worrying about you...",
    });
    message_Talk({
        english=" Wh-what\'s the matter?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    bgm2_FadeOut(60);
    Unlock(7);
    WaitLockLives(8, ACTOR_ATTENDANT1);
    Wait(30);
    WaitBgm(BGM_MEMORIES_RETURNED);
    bgm_PlayFadeIn(BGM_ENDING_THEME_INTRO, 0, 200);
    Unlock(8);
    message_SetWaitMode(150, 80);
    message_SetFace(ACTOR_ATTENDANT1, FACE_CRYING, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" [CS:N]B-Bidoof[CR]![K] [CS:N]Bidoof[CR]!",
            }
        case 2:
            {
                english=" [CS:N]B-Bidoof[CR]![K] [CS:N]Bidoof[CR]!",
            }
        default:
            {
                english=" [CS:N]B-Bidoof[CR]![K] [CS:N]Bidoof[CR]!",
            }
    }
    message_KeyWait();
    WaitLockLives(9, ACTOR_ATTENDANT1);
    Unlock(9);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Waaaah!",
            }
        case 2:
            {
                english=" Waaaah!",
            }
        default:
            {
                english=" Waaaah!",
            }
    }
    Wait(20);
    with (actor ACTOR_NPC_BIPPA) {
        MovePositionOffset(1, -2, 0);
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_BIPPA) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    message_SetWaitMode(160, 80);
    message_SetFace(ACTOR_NPC_BIPPA, FACE_SAD, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Wa-wah?![K] What all is the\nmatter?",
    });
    message_Close();
    Wait(90);
    screen2_FadeOut(0, 120);
    screen_FadeOut(1, 120);
    message_SetWaitMode(32767, 32767);
    back2_SetMode(0);
    supervision_SpecialActing(3, 0, 0);
    supervision2_SpecialActing(3, 0, 0);
    end;
}

def 1 for_actor(ACTOR_ATTENDANT1) {
    SetAnimation(2);
    SetOutputAttribute(2);
    Lock(5);
    SetAnimation(3);
    §label_1;
    forever {
        SlidePositionOffset(1, 1, 0);
        Wait(2);
        SlidePositionOffset(1, -1, 0);
        Wait(2);
        switch ( $EVENT_LOCAL ) {
            case 1:
                break_loop;
                break;
            default:
                continue;  // may be redundant
        }
    }
    §label_0;
    SetAnimation(2);
    Lock(6);
    SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    SetAnimation(81);
    WaitAnimation();
    Lock(7);
    SetAnimation(2);
    Wait(30);
    Turn2Direction(4, 2, DIR_RIGHT);
    Wait(8);
    Lock(8);
    SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    Lock(9);
    SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    SetAnimation(81);
    WaitAnimation();
    Lock(10);
    hold;
}
