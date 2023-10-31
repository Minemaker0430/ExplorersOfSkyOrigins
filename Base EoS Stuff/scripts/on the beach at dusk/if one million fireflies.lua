
def 0 {
    bgm_PlayFadeIn(BGM_ON_THE_BEACH_AT_DUSK, 0, 256);
    bgm2_PlayFadeIn(BGM_OCEAN1, 0, 256);
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03B);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    supervision_SpecialActing(21, 700, 0);
    supervision2_SpecialActing(21, 700, 0);
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
                english=" When the weather\'s good, the\n[CS:N]Krabby[CR] come out at sundown to blow bubbles...",
            }
        case 2:
            {
                english=" When the weather\'s good, the\n[CS:N]Krabby[CR] come out at sundown to blow bubbles...",
            }
        default:
            {
                english=" When the weather\'s good, the\n[CS:N]Krabby[CR] come out at sundown to blow bubbles...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" All those bubbles, catching the\nsetting sun\'s rays off the waves...",
            }
        case 2:
            {
                english=" All those bubbles, catching the\nsetting sun\'s rays off the waves...",
            }
        default:
            {
                english=" All those bubbles, reflecting the\nsetting sun off the waves...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It\'s always impressive.",
            }
        case 2:
            {
                english=" It\'s always beautiful.",
            }
        default:
            {
                english=" It\'s always beautiful.",
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
