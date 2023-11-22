
def 0 {
    bgm_PlayFadeIn(BGM_HIDDEN_HIGHLAND, 0, 256);
    back_SetGround(LEVEL_D01P11A);
    supervision_StationCommon(0);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    screen_FlushOut(1, 0, 8, 0, 0, 0);
    screen_FadeIn(1, 30);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Yep. With the memory\nof a name...",
            }
        case 2:
            {
                english=" Yes. With the memory\nof a name...",
            }
        default:
            {
                english=" Yes. With the memory\nof a name...",
            }
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...and the memory of being a\nhuman before that!",
            }
        case 2:
            {
                english=" ...and the memory of being a\nhuman before that!",
            }
        default:
            {
                english=" ...and the memory of being a\nhuman before that!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_YONOWAARU) {
        SetEffect(EFFECT_SHOCKED_MIRRORED, 3);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" I beg your pardon?![K] H-human?!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    back_SetBackEffect(4);
    Wait(30);
    message_EmptyActor();
    message_Talk({
        english="[CN]So, a former human...[K]\n[CN]With no memories...",
    });
    message_Talk({
        english="[CN]A human that possessed\n[CN]the Dimensional Scream...",
    });
    message_Talk({
        english="[CN]I became convinced then!",
    });
    message_Close();
    back_SetBackEffect(5);
    Wait(15);
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" You...are...?",
    });
    message_Talk({
        english=" You said you know your name,\nat least?",
    });
    message_Talk({
        english=" And...[K]that name would be...?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        ExecuteCommon(CORO_EXPLANATION_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_Mail({
        english="[CN][hero] told the\n[CN]name to [CS:N]Dusknoir[CR].",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_YONOWAARU) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Ah! I see...",
    });
    message_Talk({
        english=" [hero]...",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Does that name ring a bell?",
            }
        case 2:
            {
                english=" Does that name mean anything\nto you?",
            }
        default:
            {
                english=" Does that name ring a bell?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    Wait(30);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_SIGH, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" ...[K]No.",
    });
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_STUNNED, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" It means nothing to me,\nunfortunately.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_TWO_ARROWS_AT_SIDE_LEFT, 3);
    }
    with (actor ACTOR_PLAYER) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(Uh, what?!)",
            }
        default:
            {
                english="(Uh, what?!)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(Did I just see...[K]the faintest...)",
            }
        default:
            {
                english="(Did I just see...[K]the faintest...)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(Did [CS:N]Dusknoir[CR] just hide the faintest of\nsmiles?)",
            }
        default:
            {
                english="(Did [CS:N]Dusknoir[CR] just hide the faintest of\nsmiles?)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(Or did I imagine that...?)",
            }
        default:
            {
                english="(Or did I imagine that...?)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    back_SetBackEffect(4);
    Wait(30);
    message_EmptyActor();
    message_Talk({
        english="[CN]There was no doubt!",
    });
    message_Talk({
        english="[CN]This [hero] was the very\n[CN]one that I had been seeking!",
    });
    message_Close();
    screen_WhiteOut(1, 30);
    screen_FlushIn(1, 0, 1, 0, 0, 0);
    end;
}
