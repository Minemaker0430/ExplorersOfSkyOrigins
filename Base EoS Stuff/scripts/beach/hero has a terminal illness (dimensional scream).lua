
def 0 {
    back_SetGround(LEVEL_D01P11A);
    supervision_StationCommon(0);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    screen_FlushOut(1, 0, 8, 0, 0, 0);
    screen_FadeIn(1, 30);
    Wait(30);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" I\'m sincerely sorry I couldn\'t\nhelp you with that...",
    });
    message_Talk({
        english=" However...",
    });
    message_Talk({
        english=" I do know about the ability that\n[hero] possesses.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
    }
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Really?! What is it?!",
            }
        case 2:
            {
                english=" Oh, really?! What is it?!",
            }
        default:
            {
                english=" Oh, really?! What is it?!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" The ability to see the future or\nthe past by touching something...",
    });
    message_Talk({
        english=" That ability is known as the\nDimensional Scream.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Dimensional...[K] Scream?",
            }
        case 2:
            {
                english=" Dimensional...[K] Scream?",
            }
        default:
            {
                english=" Dimensional...[K] Scream?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Indeed.",
    });
    message_Talk({
        english=" How such an ability is learned,\nthat is unknown.",
    });
    message_Talk({
        english=" But sounds and images slice\nacross the boundaries of time, breaching\nobjects and reaching into Pokémon...",
    });
    message_Talk({
        english=" To manifest as visions...",
    });
    message_Talk({
        english=" And that is all I know about the\nextraordinary ability.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" So [hero] has an ability\nas special as the Dimensional Scream...",
            }
        case 2:
            {
                english=" So [hero] has an ability\nas special as the Dimensional Scream...",
            }
        default:
            {
                english=" So [hero] has an ability\nas special as the Dimensional Scream...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(..................)",
            }
        default:
            {
                english="(..................)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_YONOWAARU) {
        SetAnimation(22);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        WaitAnimation();
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    with (actor ACTOR_NPC_YONOWAARU) {
        SetAnimation(2);
    }
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Well, perhaps this is why we\nbecame friends.",
    });
    message_Talk({
        english=" To help unravel the secret of\n[hero]\'s transformation into a Pokémon!",
    });
    message_Talk({
        english=" I offer you my full cooperation!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Oh! You will?!",
            }
        case 2:
            {
                english=" Oh! You will?!",
            }
        default:
            {
                english=" Oh! You will?!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Yes. To be perfectly candid...",
    });
    message_Talk({
        english=" I can\'t stand knowing that\nthere\'s something I don\'t know!",
    });
    message_Talk({
        english=" Quite honestly, that is the full\ntruth of it!",
    });
    message_KeyWait();
    with (actor ACTOR_NPC_YONOWAARU) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    message_Talk({
        english=" Ha-ha-ha! Hoo-hoo-ha!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_YONOWAARU) {
        SetEffect(EFFECT_NONE, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It\'s great to know that we\nhave your help, [CS:N]Dusknoir[CR], sir!",
            }
        case 2:
            {
                english=" It\'s thrilling to know that we\nhave your help, [CS:N]Dusknoir[CR], sir!",
            }
        default:
            {
                english=" It\'s reassuring to know that we\nhave your help, [CS:N]Dusknoir[CR], sir!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Isn\'t this awesome,\n[hero]?",
            }
        case 2:
            {
                english=" Isn\'t this great, [hero]?",
            }
        default:
            {
                english=" Isn\'t this great, [hero]?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (performer 3) {
        SetEffect(EFFECT_LAPRAS_WATER_SHADOW, 3);
    }
    with (performer 3) {
        MovePositionOffset(6, -400, 0);
    }
    Wait(30);
    with (performer 4) {
        SetEffect(EFFECT_LAPRAS_WATER_SHADOW, 3);
    }
    with (performer 4) {
        MovePositionOffset(6, -400, 0);
    }
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    Wait(5);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UP);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_UP);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        SetAnimation(73);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(73);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        SetAnimation(23);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitAnimation();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Huh? Look at all the [CS:N]Pelipper[CR]!",
            }
        case 2:
            {
                english=" Hey! Look at all the [CS:N]Pelipper[CR]!",
            }
        default:
            {
                english=" Hey! Look at all the [CS:N]Pelipper[CR]!",
            }
    }
    message_Close();
    screen_FadeOut(1, 30);
    screen_FlushIn(1, 0, 1, 0, 0, 0);
    end;
}
