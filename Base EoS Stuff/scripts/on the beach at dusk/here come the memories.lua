
def 0 {
    bgm_PlayFadeIn(BGM_ON_THE_BEACH_AT_DUSK_SHORTENED, 0, 200);
    bgm2_PlayFadeIn(BGM_OCEAN1, 0, 160);
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03B);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    supervision_SpecialActing(21, 600, 0);
    supervision2_SpecialActing(21, 600, 0);
    with (actor ACTOR_ATTENDANT1) {
        SetOutputAttribute(2);
    }
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I haven\'t seen this for a long\ntime. It\'s just as beautiful as I remember.",
            }
        case 2:
            {
                english=" I haven\'t seen this for a long\ntime. It\'s as beautiful as I remember.",
            }
        default:
            {
                english=" I haven\'t seen this for a long\ntime. It\'s as pretty as I remember.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I\'ve been too busy to come and\nsee it.",
            }
        case 2:
            {
                english=" I\'ve just been too busy to come\nand see it.",
            }
        default:
            {
                english=" I\'ve been too busy to come and\nsee it.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But I\'ve missed this...[K]\nfantastic sight.",
            }
        case 2:
            {
                english=" But I\'ve missed this...[K]\nfantastic sight.",
            }
        default:
            {
                english=" But I\'ve missed this...[K]\nfantastic sight.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    bgm_FadeOut(210);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ..................",
            }
        case 2:
            {
                english=" ..................",
            }
        default:
            {
                english=" ..................",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" When was the last time I saw\nthis, anyway?",
            }
        case 2:
            {
                english=" I wonder when it was when I\nlast saw this...",
            }
        default:
            {
                english=" When was the last time I saw\nthis, anyway?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" The last time was...",
            }
        case 2:
            {
                english=" The last time was...",
            }
        default:
            {
                english=" The last time was...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(30);
    se_Play(8978);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    bgm2_FadeOut(160);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Oh...[K] The last time I saw this...",
            }
        case 2:
            {
                english=" Oh...[K] The last time I saw this...",
            }
        default:
            {
                english=" Oh...[K] The last time I saw this...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It was when...[K]when I met\n[hero]...",
            }
        case 2:
            {
                english=" It was when...[K]when I met\n[hero]...",
            }
        default:
            {
                english=" It was when...[K]when I met\n[hero]...",
            }
    }
    message_Close();
    screen2_FadeOut(0, 30);
    screen_FadeOut(1, 30);
    back2_SetMode(0);
    supervision_SpecialActing(3, 0, 0);
    supervision2_SpecialActing(3, 0, 0);
    end;
}
