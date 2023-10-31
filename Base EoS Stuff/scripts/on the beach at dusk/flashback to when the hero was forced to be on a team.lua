
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
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Would you join me to make an\nexploration team?",
            }
        case 2:
            {
                english=" Would you be willing to form an\nexploration team with me?",
            }
        default:
            {
                english=" Would you form an exploration\nteam with me?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I think you and I would make a\ngood exploration team, [hero].",
            }
        case 2:
            {
                english=" I\'m convinced that I can form an\neffective exploration team with you,\n[hero].",
            }
        default:
            {
                english=" I think we could make a good\nexploration team together, [hero].",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" So, how about it?[K] Come on,\nplease?",
            }
        case 2:
            {
                english=" So will you?[K] Please?",
            }
        default:
            {
                english=" So will you do that with me?[K]\nPlease?",
            }
    }
    message_Close();
    screen2_WhiteOut(0, 30);
    screen_WhiteOut(1, 30);
    screen2_FlushIn(1, 0, 1, 0, 0, 0);
    screen_FlushIn(1, 0, 1, 0, 0, 0);
    end;
}
