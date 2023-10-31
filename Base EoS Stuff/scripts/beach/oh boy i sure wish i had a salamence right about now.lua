
def 0 {
    sound_Stop();
    $SCENARIO_MAIN = scn[29, 80];
    back_SetGround(LEVEL_D01P11A);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    bgm_PlayFadeIn(BGM_OCEAN1, 90, 256);
    screen_FadeIn(1, 30);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Hey, [CS:N]Lapras[CR].[K] There\'s something\nwe want to ask you.",
            }
        case 2:
            {
                english=" Excuse me, [CS:N]Lapras[CR].[K] There\'s\nsomething we\'d like to ask you.",
            }
        default:
            {
                english=" Say, [CS:N]Lapras[CR].[K] There\'s something\nwe want to ask you.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We\'re investigating the\ndistortions in the fabric of space.",
            }
        case 2:
            {
                english=" We\'re investigating the\ndistortions in the fabric of space.",
            }
        default:
            {
                english=" We\'re investigating the\ndistortions in the fabric of space.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" The distortion of space itself...",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Yup. And we\'d like to learn\nanything that you might know about it, [CS:N]Lapras[CR].",
            }
        case 2:
            {
                english=" Yes. And we\'d like to learn\nanything that you might know about it, [CS:N]Lapras[CR].",
            }
        default:
            {
                english=" Yes. And we\'d like to learn\nanything that you might know about it, [CS:N]Lapras[CR].",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" Hmm...",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" S-so, how about it?[K] Do you\nknow anything about it?",
            }
        case 2:
            {
                english=" C-can you help us?[K] Do you know\nanything?",
            }
        default:
            {
                english=" C-can you help us?[K] Do you know\nanything?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" ...[K]I\'m sorry to say...",
    });
    message_Talk({
        english=" I don\'t know anything about the\nspace distortions.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Oh. I see...",
            }
        case 2:
            {
                english=" Oh. I see...",
            }
        default:
            {
                english=" Oh. I see...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" However...[K] I do know of a being\nthat embodies space itself.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8967);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Huh?![K] A being that embodies\nspace itself?!",
            }
        case 2:
            {
                english=" What?![K] A being that embodies\nspace itself?!",
            }
        default:
            {
                english=" Pardon?![K] A being that embodies\nspace itself?!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    bgm_ChangeVolume(90, 128);
    bgm2_PlayFadeIn(BGM_TIME_GEAR_REMIX, 0, 256);
    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" Yes.[K] Time and space are\ndeeply connected.",
    });
    message_Talk({
        english=" So, just as [CS:N]Dialga[CR] governs\ntime itself...",
    });
    message_Talk({
        english=" So, too, there is a being that\ngoverns the fabric of space.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Th-that being...[K] Who is it?",
            }
        case 2:
            {
                english=" Th-that being...[K] Who is it?",
            }
        default:
            {
                english=" Th-that being...[K] Who is it?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" Its name is [CS:N]Palkia[CR].",
    });
    message_Talk({
        english=" This being is said to possess the\nability to distort space itself.",
    });
    message_Talk({
        english=" And [CS:P]Spacial Rift[CR] is said to be\nits domain.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(The being that governs space...[K] [CS:N]Palkia[CR]...)",
            }
        default:
            {
                english="(The being that governs space...[K] [CS:N]Palkia[CR]...)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(Another being...[K]like [CS:N]Dialga[CR]...)",
            }
        default:
            {
                english="(Another being...[K]like [CS:N]Dialga[CR]...)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" If we meet [CS:N]Palkia[CR]...[K]we might be\nable to learn more about the space distortions!",
            }
        case 2:
            {
                english=" If we meet [CS:N]Palkia[CR]...[K]we might be\nable to learn more about the space distortions!",
            }
        default:
            {
                english=" If we meet [CS:N]Palkia[CR]...[K]we might be\nable to learn more about the space distortions!",
            }
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" So, uh...[K] How do we get to\n[CS:P]Spacial Rift[CR]?",
            }
        case 2:
            {
                english=" So, uh...[K] How do we get to\n[CS:P]Spacial Rift[CR]?",
            }
        default:
            {
                english=" So, uh...[K] How do we get to\n[CS:P]Spacial Rift[CR]?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Can you travel there, [CS:N]Lapras[CR]?\nJust like you can go to the [CS:P]Hidden Land[CR]?",
            }
        case 2:
            {
                english=" Can you travel there, [CS:N]Lapras[CR]?\nJust like you can go to the [CS:P]Hidden Land[CR]?",
            }
        default:
            {
                english=" Can you travel there, [CS:N]Lapras[CR]?\nJust like you can go to the [CS:P]Hidden Land[CR]?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    bgm_ChangeVolume(90, 256);
    bgm2_FadeOut(180);
    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" I hate to disappoint, but...[K]I can\'t\ntravel to [CS:P]Spacial Rift[CR]. I don\'t even know where\nit is.",
    });
    message_Talk({
        english=" That is all I can tell you.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8972);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Oh... All right...",
            }
        case 2:
            {
                english=" Oh... All right...",
            }
        default:
            {
                english=" Oh... All right...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" I\'m sorry, [partner].",
    });
    message_Talk({
        english=" I\'m sorry that I\'m not much help.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_HEAD_SHAKE_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" No, no...not at all...",
            }
        case 2:
            {
                english=" No, no...not at all...",
            }
        default:
            {
                english=" No, no...not at all...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Learning about the existence of\n[CS:N]Palkia[CR] is a big help for us.",
            }
        case 2:
            {
                english=" Learning about the existence of\n[CS:N]Palkia[CR] is a big help for us.",
            }
        default:
            {
                english=" Learning about the existence of\n[CS:N]Palkia[CR] is a big help for us.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        SetAnimation(71);
    }
    with (actor ACTOR_PLAYER) {
        WaitAnimation();
    }
    WaitExecuteLives(ACTOR_PLAYER);
    with (actor ACTOR_PLAYER) {
        SetAnimation(2);
    }
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Thank you, [CS:N]Lapras[CR].",
            }
        case 2:
            {
                english=" Thank you, [CS:N]Lapras[CR].",
            }
        default:
            {
                english=" Thank you, [CS:N]Lapras[CR].",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We\'ll investigate on our own\nfrom here.",
            }
        case 2:
            {
                english=" We\'ll investigate on our own\nfrom now.",
            }
        default:
            {
                english=" We\'ll investigate on our own\nfrom now.",
            }
    }
    message_Close();
    bgm_FadeOut(120);
    screen_FadeOut(1, 60);
    WaitBgm(BGM_OCEAN1);
    end;
}
