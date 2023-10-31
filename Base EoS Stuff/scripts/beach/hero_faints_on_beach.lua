
def 0 {
    sound_Stop();
    bgm_PlayFadeIn(BGM_OCEAN1, 120, 256);
    Wait(120);
    message_ResetActor();
    message_Monologue({
        english="......",
    });
    message_Monologue({
        english="............",
    });
    message_Monologue({
        english="..................",
    });
    message_Monologue({
        english="Urrgh...",
    });
    message_Close();
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03A);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    screen2_FadeIn(1, 120);
    Wait(60);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="Where...",
            }
        default:
            {
                english="Where...",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="...Where am I?",
            }
        default:
            {
                english="...Where am I?",
            }
    }
    message_Close();
    back_SetGround(LEVEL_D01P11A);
    supervision_Acting(0);
    with (actor ACTOR_PLAYER) {
        SetAnimation(76);
    }
    screen_FadeIn(1, 120);
    Wait(60);
    message_SetFace(ACTOR_PLAYER, FACE_PAIN, FACE_POS_STANDARD);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="...[K]I can\'t...[K] Drifting off...",
            }
        default:
            {
                english="...[K]I can\'t...[K] Drifting off...",
            }
    }
    message_Close();
    screen_FadeChange(1, 20, 256, 128);
    screen_FadeChange(1, 20, 128, 256);
    screen_FadeChange(1, 20, 256, 128);
    screen_FadeChange(1, 20, 128, 256);
    Wait(30);
    bgm_FadeOut(120);
    screen2_FadeOut(0, 150);
    screen_FadeOut(1, 150);
    back2_SetMode(0);
    Wait(60);
    end;
}
