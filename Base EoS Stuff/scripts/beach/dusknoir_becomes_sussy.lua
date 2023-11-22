
def 0 {
    sound_Stop();
    back_SetGround(LEVEL_D01P11A);
    supervision_StationCommon(0);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    bgm_PlayFadeIn(BGM_OCEAN1, 90, 256);
    screen_FadeIn(1, 60);
    Wait(60);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_LC_FACEOUTW);
    message_Talk({
        english=" I see...[K]so you found our friend\nunconscious right here.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Yep, this is the spot.",
            }
        case 2:
            {
                english=" Yes, right here exactly.",
            }
        default:
            {
                english=" Yes, this is the exact spot.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UPLEFT);
    }
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Then you regained consciousness.",
    });
    message_Talk({
        english=" Though you\'d lost your memory.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    bgm_ChangeVolume(60, 0);
    bgm2_PlayFadeIn(BGM_TIME_GEAR_REMIX, 0, 256);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Yep. With a memory of a name...",
            }
        case 2:
            {
                english=" Yes. With a memory of a name...",
            }
        default:
            {
                english=" Yes. With a memory of a name...",
            }
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...and the memory of being a\nhuman before this!",
            }
        case 2:
            {
                english=" ...and the memory of being a\nhuman before this!",
            }
        default:
            {
                english=" ...and the memory of being a\nhuman before this!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8968);
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
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    Wait(60);
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    se_Play(8972);
    with (actor ACTOR_NPC_YONOWAARU) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    message_Talk({
        english=" But our friend here seems to be\na Pokémon in every obvious way!",
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
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_TOP_R_CENTER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That\'s true...",
            }
        case 2:
            {
                english=" That\'s true...",
            }
        default:
            {
                english=" That\'s true...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I guess this is even beyond the\ngreat [CS:N]Dusknoir[CR]\'s understanding.",
            }
        case 2:
            {
                english=" I guess this is even beyond the\ngreat [CS:N]Dusknoir[CR]\'s understanding.",
            }
        default:
            {
                english=" I guess this is even beyond the\ngreat [CS:N]Dusknoir[CR]\'s understanding.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But we\'re sure that something\ncaused my partner\'s memory loss...",
            }
        case 2:
            {
                english=" But we\'re certain that something\ncaused my partner\'s memory loss...",
            }
        default:
            {
                english=" But we\'re sure that something\ncaused my partner\'s memory loss...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...and caused the transformation\nfrom human to Pokémon!",
            }
        case 2:
            {
                english=" ...and caused the transformation\nfrom human to Pokémon!",
            }
        default:
            {
                english=" ...and caused the transformation\nfrom human to Pokémon!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" A human...[K]with the Dimensional\nScream ability...",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
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
    bgm2_FadeOut(180);
    se_Play(8967);
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
        english=" You\'re...[K][hero]...",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    WaitBgm2(BGM_TIME_GEAR_REMIX);
    bgm_ChangeVolume(90, 256);
    se_Play(8962);
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
    se_Play(8964);
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
    se_Play(8968);
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
                english=" Dimensional...[K]Scream?",
            }
        case 2:
            {
                english=" Dimensional...[K]Scream?",
            }
        default:
            {
                english=" Dimensional...[K]Scream?",
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
        english=" And that is all that I know about\nthe extraordinary ability.",
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
    se_Play(6662);
    with (performer 3) {
        SetEffect(EFFECT_LAPRAS_WATER_SHADOW, 3);
    }
    with (performer 3) {
        MovePositionOffset(6, -400, 0);
    }
    Wait(30);
    se_Play(6662);
    with (performer 4) {
        SetEffect(EFFECT_LAPRAS_WATER_SHADOW, 3);
    }
    with (performer 4) {
        MovePositionOffset(6, -400, 0);
    }
    Wait(30);
    se_Play(8978);
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
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    screen2_FadeOut(1, 30);
    back2_SetMode(4);
    back2_SetGround(LEVEL_V12P01A);
    back2_SetEffect(7, 0);
    camera2_SetPositionMark(Position<'m0', 19.5, 16>);
    supervision_Acting(1);
    with (object OBJECT_V12P01A1_228) {
        SetOutputAttribute(2048);
    }
    with (object OBJECT_V12P01A2_229) {
        SetOutputAttribute(2048);
    }
    with (object OBJECT_V12P01A3_230) {
        SetOutputAttribute(2048);
    }
    with (object OBJECT_V12P01A4_231) {
        SetOutputAttribute(2048);
    }
    with (object OBJECT_V12P01A5_232) {
        SetOutputAttribute(2048);
    }
    with (object OBJECT_V12P01A6_233) {
        SetOutputAttribute(2048);
    }
    with (object OBJECT_V12P01A7_234) {
        SetOutputAttribute(2048);
    }
    with (object OBJECT_V12P01A8_235) {
        SetOutputAttribute(2048);
    }
    with (object OBJECT_V12P01A1_228) {
        Move2PositionOffset(32896, -1000, -1000);
    }
    with (object OBJECT_V12P01A2_229) {
        Move2PositionOffset(32896, -1000, 1000);
    }
    with (object OBJECT_V12P01A3_230) {
        Move2PositionOffset(32852, 1000, -1000);
    }
    with (object OBJECT_V12P01A4_231) {
        Move2PositionOffset(32852, 0, -1000);
    }
    with (object OBJECT_V12P01A5_232) {
        Move2PositionOffset(32852, -1000, 1000);
    }
    with (object OBJECT_V12P01A6_233) {
        Move2PositionOffset(32819, -1000, -1000);
    }
    with (object OBJECT_V12P01A7_234) {
        Move2PositionOffset(32819, 1000, -1000);
    }
    with (object OBJECT_V12P01A8_235) {
        Move2PositionOffset(32819, 1000, 1000);
    }
    screen2_FadeIn(1, 30);
    Wait(3);
    camera2_SetPositionMark(Position<'m1', 58.5, 16>);
    Wait(3);
    camera2_SetPositionMark(Position<'m2', 97.5, 16>);
    Wait(3);
    camera2_SetPositionMark(Position<'m3', 136.5, 16>);
    Wait(120);
    screen2_FadeOut(1, 30);
    supervision_RemoveActing(1);
    back2_SetGround(LEVEL_V01P03A);
    camera2_SetPositionMark(Position<'m4', 33, 9.5>);
    Wait(30);
    screen2_FadeIn(1, 30);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
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
                english=" There seems to be a lot more\nflying around than usual...",
            }
        case 2:
            {
                english=" There appears to be a lot more\nin the air than usual...",
            }
        default:
            {
                english=" There seems to be a lot more\nflying than usual...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Could something be the matter?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        SetAnimation(2);
    }
    Wait(5);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(2);
    }
    Wait(2);
    with (actor ACTOR_NPC_YONOWAARU) {
        SetAnimation(2);
    }
    Wait(30);
    message_SetActor(ACTOR_NPC_BIPPA);
    message_Talk({
        english=" Hey!",
    });
    se_Play(8978);
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
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    Wait(5);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    Wait(5);
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    with (performer 0) {
        MovePositionMark(32972, Position<'m5', 50, 23.5>);
    }
    with (actor ACTOR_NPC_BIPPA) {
        MovePositionMark(33152, Position<'m6', 54, 23.5>);
    }
    WaitExecuteLives(ACTOR_NPC_BIPPA);
    se_Play(8964);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_C_FACER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Hi, [CS:N]Bidoof[CR]!",
            }
        case 2:
            {
                english=" Hello, [CS:N]Bidoof[CR]!",
            }
        default:
            {
                english=" Oh, hello, [CS:N]Bidoof[CR]!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8972);
    with (actor ACTOR_NPC_BIPPA) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_NPC_BIPPA) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_BIPPA);
    message_SetFace(ACTOR_NPC_BIPPA, FACE_SAD, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" I f-finally...f-found you all...",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8962);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_C_FACER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" What\'s the big rush? You\'re all\nout of breath!",
            }
        case 2:
            {
                english=" What\'s the big hurry? You\'re all\nout of breath!",
            }
        default:
            {
                english=" What\'s the hurry? You\'re all\nout of breath!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_BIPPA) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_NPC_BIPPA);
    message_SetFace(ACTOR_NPC_BIPPA, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" The call has been put out!",
    });
    message_Talk({
        english=" All the apprentices are to report\nto the guild immediately!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(1, 10, DIR_LEFT);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(1, 10, DIR_UPLEFT);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_YONOWAARU);
    Wait(15);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_TOP_C_FACEL);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Oh, no. Something is up!",
            }
        case 2:
            {
                english=" Uh-oh. Something is up!",
            }
        default:
            {
                english=" Uh-oh. Something is up!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_YONOWAARU, FACE_NORMAL, FACE_POS_TOP_L_FACEINW);
    message_Talk({
        english=" I will go with you!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_BIPPA) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_NPC_BIPPA);
    message_SetFace(ACTOR_NPC_BIPPA, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Hurry, everyone!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_BIPPA) {
        MovePositionOffset(33152, 200, 0);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    Wait(5);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    Wait(30);
    with (actor ACTOR_PLAYER) {
        MovePositionOffset(33152, 200, 0);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(33152, 200, 0);
    }
    with (actor ACTOR_NPC_YONOWAARU) {
        MovePositionOffset(33152, 200, 0);
    }
    Wait(45);
    bgm_FadeOut(120);
    screen2_FadeOut(0, 60);
    screen_FadeOut(1, 60);
    back2_SetMode(0);
    WaitBgm(BGM_OCEAN1);
    Wait(30);
    $SCENARIO_MAIN = scn[14, 0];
    CallCommon(CORO_HANYOU_SAVE_FUNC);
    end;
}
