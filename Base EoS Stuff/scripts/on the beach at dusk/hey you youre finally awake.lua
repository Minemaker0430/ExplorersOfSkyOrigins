
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
    with (actor ACTOR_PLAYER) {
        SetAnimation(76);
    }
    supervision_SpecialActing(21, 600, 0);
    supervision2_SpecialActing(21, 600, 0);
    with (actor ACTOR_ATTENDANT1) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_PLAYER) {
        SetOutputAttribute(2);
    }
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ............",
            }
        case 2:
            {
                english=" ............",
            }
        default:
            {
                english=" ............",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This is where I always end up\nwhen I\'m feeling sorry for myself.",
            }
        case 2:
            {
                english=" This is where I always come\nwhen I\'m feeling sorry for myself.",
            }
        default:
            {
                english=" This is where I always come\nwhen I\'m feeling down on myself.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But it makes me feel good to be\nhere, like always.",
            }
        case 2:
            {
                english=" But it makes me feel good to be\nhere, like always.",
            }
        default:
            {
                english=" But it makes me feel good to be\nhere, like always.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Coming here cheers me up.",
            }
        case 2:
            {
                english=" Coming here is uplifting. It\ncheers me up.",
            }
        default:
            {
                english=" Coming here heals my spirits.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    bgm_FadeOut(120);
    Wait(60);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(8, 10, DIR_LEFT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    se_Play(8964);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_TWO_ARROWS_AT_SIDE_LEFT, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Hey...[K]what\'s that?[K] What\'s going\non over there?",
            }
        case 2:
            {
                english=" Hey...[K]what\'s that?[K] What\'s going\non over there?",
            }
        default:
            {
                english=" Hey...[K]what\'s that?[K] What\'s going\non over there?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (performer 0) {
        MovePositionMark(1, Position<'m1', 52, 22>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m2', 52, 21.5>);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    se_Play(8974);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Waah![K] Someone has collapsed on\nthe sand!",
            }
        case 2:
            {
                english=" Waah![K] Someone has collapsed on\nthe sand!",
            }
        default:
            {
                english=" Waah![K] Someone has collapsed on\nthe sand!",
            }
    }
    message_Close();
    with (performer 0) {
        MovePositionMark(3, Position<'m3', 38.5, 22>);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(1024);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(3, Position<'m4', 39, 21.5>);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(768);
    }
    Wait(10);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" What happened?![K] Are you OK?",
            }
        case 2:
            {
                english=" What happened?![K] Are you OK?",
            }
        default:
            {
                english=" What happened?![K] Are you OK?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, 1, 0);
    }
    Wait(3);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, -1, 0);
    }
    message_SetFace(ACTOR_PLAYER, FACE_PAIN, FACE_POS_BOTTOM_L_FACEINW);
    message_Monologue({
        english="(..................)",
    });
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(...Ugh...)",
            }
        default:
            {
                english="(...Ugh...)",
            }
    }
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, 1, 0);
    }
    Wait(3);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, -1, 0);
    }
    Wait(3);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, 1, 0);
    }
    Wait(3);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, -1, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        SetAnimation(63);
    }
    with (actor ACTOR_PLAYER) {
        WaitAnimation();
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(30);
    with (actor ACTOR_PLAYER) {
        SetAnimation(2);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(8, 10, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    se_Play(8964);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Great![K] You\'re awake!",
            }
        case 2:
            {
                english=" You\'re awake![K] That\'s a relief!",
            }
        default:
            {
                english=" You\'re awake![K] Thank goodness!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionTurn(4, 1, 3);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(5);
    }
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(1, 16, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(2);
    }
    with (actor ACTOR_PLAYER) {
        Turn2DirectionTurn(4, 2, 5);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(15);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionTurn(4, 1, 5);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(30);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionTurn(4, 2, 4);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(45);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(Where...where am I...?)",
            }
        default:
            {
                english="(Where...where am I...?)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(10);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 2, ACTOR_ATTENDANT1);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" You weren\'t moving. You really\nhad me worried there!",
            }
        case 2:
            {
                english=" You weren\'t moving at all. I was\nseriously worried!",
            }
        default:
            {
                english=" You wouldn\'t move at all. I was\nreally scared for you!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" How did you wind up unconscious\nout here?",
            }
        case 2:
            {
                english=" Do you remember how you ended\nup unconscious out here?",
            }
        default:
            {
                english=" Do you have any idea how you\nended up unconscious out here?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(I... I was unconscious?[K] What happened...?)",
            }
        default:
            {
                english="(I... I was unconscious?[K] What happened...?)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Anyway, I\'m [partner].[K]\nGlad to meet you!",
            }
        case 2:
            {
                english=" Well, I\'m [partner].[K]\nGlad to meet you!",
            }
        default:
            {
                english=" Anyway, I\'m [partner].[K]\nHappy to meet you!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" So who might you be?",
            }
        case 2:
            {
                english=" And who are you?",
            }
        default:
            {
                english=" And who are you?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I don\'t think I\'ve seen your face\naround here.",
            }
        case 2:
            {
                english=" I\'ve never seen you\naround before.",
            }
        default:
            {
                english=" I don\'t think I\'ve seen you\naround before.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        ExecuteCommon(CORO_EXPLANATION_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    se_Play(8974);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Huh?[K] You say you\'re a human?",
            }
        case 2:
            {
                english=" What?[K] You say you\'re a human?",
            }
        default:
            {
                english=" What?[K] You say you\'re a human?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" You look like a totally normal\n[c_kind:PLAYER] to me!",
            }
        case 2:
            {
                english=" You look like a totally normal\n[c_kind:PLAYER] to me!",
            }
        default:
            {
                english=" You look like a totally normal\n[c_kind:PLAYER] to me!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionTurn(4, 2, 4);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(15);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionTurn(4, 1, 5);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(20);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionTurn(4, 2, 5);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(15);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionTurn(4, 1, 3);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(15);
    Wait(30);
    se_Play(8968);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_SHOCKED_MIRRORED, 3);
    }
    with (actor ACTOR_PLAYER) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_SetFace(ACTOR_PLAYER, FACE_SURPRISED, FACE_POS_BOTTOM_L_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(It\'s...it\'s true!)",
            }
        default:
            {
                english="(It\'s...it\'s true!)",
            }
    }
    switch ( ProcessSpecial(PROCESS_SPECIAL_GET_HERO_KIND, 0, 0) ) {
        case 17:
            §label_0;
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(I\'ve turned into an [c_kind:PLAYER]!)",
                    }
                default:
                    {
                        english="(I\'ve turned into an [c_kind:PLAYER]!)",
                    }
            }
            §label_1;
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            Wait(15);
            message_SetFace(ACTOR_PLAYER, FACE_WORRIED, FACE_POS_BOTTOM_L_FACEINW);
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(...But how did this happen?[K] I don\'t remember\nanything...)",
                    }
                default:
                    {
                        english="(...But how did this happen?[K] I don\'t remember\nanything...)",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" You\'re...[K]a little odd...",
                    }
                case 2:
                    {
                        english=" You\'re...[K]a little odd...",
                    }
                default:
                    {
                        english=" You\'re...[K]a little odd...",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Are you pulling some kind of\ntrick on me?",
                    }
                case 2:
                    {
                        english=" Are you pulling some kind of\ntrick on me?",
                    }
                default:
                    {
                        english=" Are you pulling some kind of\ntrick on me?",
                    }
            }
            message_Close();
            se_Play(8967);
            with (actor ACTOR_PLAYER) {
                SetEffect(EFFECT_SHOCKED_MIRRORED, 3);
            }
            with (actor ACTOR_PLAYER) {
                WaitEffect();
            }
            WaitExecuteLives(ACTOR_PLAYER);
            Wait(15);
            with (actor ACTOR_PLAYER) {
                ExecuteCommon(CORO_HEAD_SHAKE_FUNC_SERIES, 0);
            }
            WaitExecuteLives(ACTOR_PLAYER);
            Wait(30);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" You\'re telling me the truth?",
                    }
                case 2:
                    {
                        english=" You\'re telling me the truth?",
                    }
                default:
                    {
                        english=" You\'re telling me the truth?",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" OK, then what\'s your name?[K]\nWhat do you call yourself?",
                    }
                case 2:
                    {
                        english=" All right, then. Your name?[K]\nWhat\'s your name?",
                    }
                default:
                    {
                        english=" OK, how about your name?[K]\nWhat\'s your name?",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(My name?[K] That\'s right, my name is...)",
                    }
                default:
                    {
                        english="(My name?[K] That\'s right, my name is...)",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            switch ( message_Menu(MENU_PLAYER_NAME) ) { }
            message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Oh, [hero] is your name?",
                    }
                case 2:
                    {
                        english=" Oh, [hero] is your name?",
                    }
                default:
                    {
                        english=" So you\'re named [hero]?",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(71);
            }
            with (actor ACTOR_ATTENDANT1) {
                WaitAnimation();
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" OK.[K] Well, you don\'t seem to be a\nbad Pokémon, at least.",
                    }
                case 2:
                    {
                        english=" OK.[K] Well, you don\'t seem to be a\nbad Pokémon, at least.",
                    }
                default:
                    {
                        english=" OK.[K] Well, you don\'t seem to be a\nbad Pokémon, at least.",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            Wait(15);
            se_Play(8972);
            with (actor ACTOR_ATTENDANT1) {
                SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
            }
            with (actor ACTOR_ATTENDANT1) {
                WaitEffect();
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Sorry that I doubted you.",
                    }
                case 2:
                    {
                        english=" Sorry that I doubted you.",
                    }
                default:
                    {
                        english=" Sorry that I doubted you.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" More and more bad Pokémon\nhave been turning up lately, you see!",
                    }
                case 2:
                    {
                        english=" More and more bad Pokémon\nhave been turning up lately, you see!",
                    }
                default:
                    {
                        english=" More and more bad Pokémon\nhave been turning up lately, you see!",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" A lot of Pokémon have started\nbeing aggressive lately.[K] Things have\ngotten wild for some reason...",
                    }
                case 2:
                    {
                        english=" Many Pokémon have gotten\naggressive lately.[K] Things have grown\nsomewhat lawless...",
                    }
                default:
                    {
                        english=" A lot of Pokémon have gotten\naggressive lately.[K] It\'s just not\nsafe anymore...",
                    }
            }
            message_Close();
            supervision_Acting(1);
            Wait(1);
            with (actor ACTOR_NPC_ZUBATTO) {
                SetOutputAttribute(2);
            }
            with (actor ACTOR_NPC_DOGAASU) {
                SetOutputAttribute(2);
            }
            with (actor ACTOR_NPC_ZUBATTO) {
                SetAnimation(5);
            }
            with (actor ACTOR_NPC_ZUBATTO) {
                MovePositionMark(33075, Position<'m5', 43.5, 21.5>);
            }
            with (actor ACTOR_NPC_DOGAASU) {
                MovePositionMark(33075, Position<'m6', 43.5, 24.5>);
            }
            Wait(30);
            se_Play(8964);
            with (actor ACTOR_PLAYER) {
                SetEffect(EFFECT_EXCLAMATION_MARK, 3);
            }
            WaitExecuteLives(ACTOR_NPC_ZUBATTO);
            bgm2_Stop();
            se_Play(5121);
            with (actor ACTOR_NPC_ZUBATTO) {
                SetAnimation(12);
            }
            Wait(15);
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(11);
            }
            with (actor ACTOR_ATTENDANT1) {
                SlidePositionMark(3, Position<'m7', 35, 21.5>);
            }
            message_SetFace(ACTOR_ATTENDANT1, FACE_SHOUTING, FACE_POS_TOP_LC_FACEOUTW);
            message_FacePositionOffset(2, 1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Ow!",
                    }
                case 2:
                    {
                        english=" Ouch!",
                    }
                default:
                    {
                        english=" Yowch!",
                    }
            }
            with (actor ACTOR_NPC_ZUBATTO) {
                SetAnimation(5);
            }
            with (actor ACTOR_PLAYER) {
                SetAnimation(5);
            }
            with (actor ACTOR_PLAYER) {
                SlidePositionMark(4, Position<'m8', 31, 21.5>);
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            with (actor ACTOR_ATTENDANT1) {
                SetEffect(EFFECT_SHOCKED, 3);
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(68);
            }
            supervision_Acting(3);
            with (object OBJECT_G01P01A1_93) {
                SetOutputAttribute(2);
            }
            with (object OBJECT_G01P01A1_93) {
                MovePositionOffset(2, 4, -4);
            }
            with (object OBJECT_G01P01A1_93) {
                MovePositionOffset(2, 12, 12);
            }
            with (object OBJECT_G01P01A1_93) {
                MovePositionMark(2, Position<'m9', 39.5, 23.5>);
            }
            with (actor ACTOR_PLAYER) {
                SetAnimation(2);
            }
            with (object OBJECT_G01P01A1_93) {
                MoveHeight(2, 10);
            }
            Wait(1);
            with (object OBJECT_G01P01A1_93) {
                MoveHeight(2, 0);
            }
            message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
            message_Talk({
                english=" Well, I do beg your pardon.",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                Turn2Direction(1, 10, DIR_RIGHT);
            }
            se_Play(8971);
            with (actor ACTOR_ATTENDANT1) {
                SetEffect(EFFECT_ANGRY, 3);
            }
            message_SetFace(ACTOR_ATTENDANT1, FACE_ANGRY, FACE_POS_TOP_L_CENTER);
            message_FacePositionOffset(2, 1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Hey! Why\'d you do that?!",
                    }
                case 2:
                    {
                        english=" Hey! Why\'d you do that?!",
                    }
                default:
                    {
                        english=" Hey! Why\'d you do that?!",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
            message_Talk({
                english=" Heh-heh-heh! Can\'t figure it out?",
            });
            message_Talk({
                english=" We wanted to mess with you!\nCan\'t face up to us, can you?!",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                SetEffect(EFFECT_NONE, 3);
            }
            with (actor ACTOR_ATTENDANT1) {
                ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
            }
            message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_TOP_L_CENTER);
            message_FacePositionOffset(2, 1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Wh-what?!",
                    }
                case 2:
                    {
                        english=" Wh-what?!",
                    }
                default:
                    {
                        english=" Wh-what?!",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_NPC_ZUBATTO) {
                Turn2Direction(4, 10, DIR_DOWNLEFT);
            }
            WaitExecuteLives(ACTOR_NPC_ZUBATTO);
            message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
            message_Talk({
                english=" That\'s yours, isn\'t it?",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                Turn2Direction(4, 10, DIR_DOWNRIGHT);
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            with (actor ACTOR_PLAYER) {
                Turn2Direction(4, 10, DIR_DOWNRIGHT);
            }
            se_Play(8967);
            with (actor ACTOR_ATTENDANT1) {
                SetEffect(EFFECT_EXCLAMATION_MARK, 3);
            }
            with (actor ACTOR_ATTENDANT1) {
                WaitEffect();
            }
            message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_TOP_L_CENTER);
            message_FacePositionOffset(2, 1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Hey! That\'s...!",
                    }
                case 2:
                    {
                        english=" No! That\'s...!",
                    }
                default:
                    {
                        english=" Oh! That\'s...!",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
            message_Talk({
                english=" Sorry, kiddo. We\'ll take that!",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_NPC_ZUBATTO) {
                Move2PositionOffset(1, -28, 24);
            }
            WaitExecuteLives(ACTOR_NPC_ZUBATTO);
            supervision_RemoveActing(3);
            se_Play(8968);
            with (actor ACTOR_ATTENDANT1) {
                SetEffect(EFFECT_SHOCKED_MIRRORED, 3);
            }
            message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_TOP_L_CENTER);
            message_FacePositionOffset(2, 1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Aaaah!",
                    }
                case 2:
                    {
                        english=" Aaaah!",
                    }
                default:
                    {
                        english=" Aaaah!",
                    }
            }
            Wait(10);
            with (actor ACTOR_NPC_ZUBATTO) {
                Slide2PositionOffset(1, 28, -24);
            }
            WaitExecuteLives(ACTOR_NPC_ZUBATTO);
            with (actor ACTOR_NPC_ZUBATTO) {
                Turn2Direction(4, 10, DIR_LEFT);
            }
            WaitExecuteLives(ACTOR_NPC_ZUBATTO);
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_ZUBATTO);
            }
            with (actor ACTOR_PLAYER) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_ZUBATTO);
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
            message_Talk({
                english=" Whoa-ho-ho![K] Not gonna make a\nmove to get that back?[K] What\'s the matter?[K]\nToo scared?",
            });
            message_Talk({
                english=" I didn\'t expect that you\'d be such\na big coward!",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_NPC_DOGAASU) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_ZUBATTO);
            }
            WaitExecuteLives(ACTOR_NPC_DOGAASU);
            with (actor ACTOR_NPC_ZUBATTO) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_DOGAASU);
            }
            WaitExecuteLives(ACTOR_NPC_ZUBATTO);
            message_Talk({
                english=" Come on. Let\'s get out of here.",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_NPC_DOGAASU) {
                Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
            }
            WaitExecuteLives(ACTOR_NPC_DOGAASU);
            with (actor ACTOR_NPC_ZUBATTO) {
                Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
            }
            WaitExecuteLives(ACTOR_NPC_ZUBATTO);
            message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
            message_Talk({
                english=" See you around, chicken.[K]\nHeh-heh-heh.",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            bgm_PlayFadeIn(BGM_OCEAN1, 150, 256);
            with (performer 0) {
                MovePositionMark(32896, Position<'m10', 33, 22>);
            }
            with (actor ACTOR_NPC_DOGAASU) {
                MovePositionMark(1, Position<'m11', 12, 26.5>);
            }
            with (actor ACTOR_NPC_ZUBATTO) {
                Turn2Direction(4, 10, DIR_DOWNLEFT);
            }
            Wait(30);
            with (actor ACTOR_NPC_ZUBATTO) {
                MovePositionMark(1, Position<'m12', 13, 26.5>);
            }
            Wait(20);
            with (actor ACTOR_ATTENDANT1) {
                Turn2Direction(16, 1, DIR_DOWNLEFT);
            }
            Wait(10);
            with (actor ACTOR_PLAYER) {
                Turn2Direction(32, 1, DIR_DOWNLEFT);
            }
            WaitExecuteLives(ACTOR_NPC_ZUBATTO);
            supervision_RemoveActing(1);
            Wait(60);
            message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_BOTTOM_R_FACEINW);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" ...[K]Ohhh...",
                    }
                case 2:
                    {
                        english=" ...[K]Ohhh...",
                    }
                default:
                    {
                        english=" ...[K]Ohhh...",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_PLAYER);
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Wh-what should I do?",
                    }
                case 2:
                    {
                        english=" Wh-what should I do?",
                    }
                default:
                    {
                        english=" Wh-what should I do?",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_PLAYER) {
                Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
            }
            WaitExecuteLives(ACTOR_PLAYER);
            Wait(10);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" That\'s my personal treasure.\nIt means everything to me.",
                    }
                case 2:
                    {
                        english=" That\'s my personal treasure.\nIt means everything to me.",
                    }
                default:
                    {
                        english=" That\'s my personal treasure.\nIt means everything to me.",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                SlidePositionOffset(1, 1, 0);
            }
            Wait(3);
            with (actor ACTOR_ATTENDANT1) {
                SlidePositionOffset(1, -1, 0);
            }
            Wait(3);
            with (actor ACTOR_ATTENDANT1) {
                SlidePositionOffset(1, 1, 0);
            }
            Wait(3);
            with (actor ACTOR_ATTENDANT1) {
                SlidePositionOffset(1, -1, 0);
            }
            message_SetFace(ACTOR_ATTENDANT1, FACE_TEARY_EYED, FACE_POS_BOTTOM_R_FACEINW);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" If I lose that...",
                    }
                case 2:
                    {
                        english=" If I lose that...",
                    }
                default:
                    {
                        english=" If I lose that...",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                ExecuteCommon(CORO_HEAD_SHAKE_FUNC_SERIES, 0);
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            Wait(30);
            message_SetFace(ACTOR_ATTENDANT1, FACE_DETERMINED, FACE_POS_BOTTOM_R_FACEINW);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" No! There\'s no time to waste!",
                    }
                case 2:
                    {
                        english=" No! There\'s no time to waste!",
                    }
                default:
                    {
                        english=" No! There\'s no time to waste!",
                    }
            }
            message_SetActor(ACTOR_ATTENDANT1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" I have to get it back![K] Hey, will\nyou help me?",
                    }
                case 2:
                    {
                        english=" I\'ve got to get it back![K] Hey, can\nI get you to help me?",
                    }
                default:
                    {
                        english=" I have to get it back![K] Say, can\nyou please help me?",
                    }
            }
            switch ( message_SwitchMenu(0, 1) ) {
                case menu({
                    english="Yes",
                }):
                    §label_2;
                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                    with (actor ACTOR_ATTENDANT1) {
                        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
                    }
                    WaitExecuteLives(ACTOR_ATTENDANT1);
                    message_SetFace(ACTOR_ATTENDANT1, FACE_INSPIRED, FACE_POS_BOTTOM_R_FACEINW);
                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                        case 1:
                            {
                                english=" R-really?[K]\nYou\'ll really help?!",
                            }
                        case 2:
                            {
                                english=" R-really?[K]\nYou\'ll really help?!",
                            }
                        default:
                            {
                                english=" R-really?[K]\nYou\'ll really help?!",
                            }
                    }
                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                        case 1:
                            {
                                english=" Th-thank you! Let\'s go quickly!",
                            }
                        case 2:
                            {
                                english=" Th-thank you! Let\'s go quickly!",
                            }
                        default:
                            {
                                english=" Th-thanks! Can we go take\ncare of it right now?",
                            }
                    }
                    message_Close();
                    with (actor ACTOR_ATTENDANT1) {
                        MovePositionMark(33152, Position<'m13', 14, 26.5>);
                    }
                    with (actor ACTOR_PLAYER) {
                        Turn2Direction(8, 1, DIR_DOWNLEFT);
                    }
                    with (actor ACTOR_PLAYER) {
                        MovePositionMark(1, Position<'m14', 14, 26.5>);
                    }
                    Wait(60);
                    bgm_FadeOut(60);
                    screen2_FadeOut(0, 30);
                    screen_FadeOut(1, 30);
                    back2_SetMode(0);
                    WaitBgm(BGM_OCEAN1);
                    $SCENARIO_MAIN = scn[2, 2];
                    dungeon_mode(1) = DMODE_OPEN;
                    main_EnterDungeon(1, 0);
                    switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }
                    main_EnterDungeon(-1, 0);
                    hold;
                    end;
                case menu({
                    english="No",
                }):
                default:
                    §label_3;
                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                    se_Play(8968);
                    with (actor ACTOR_ATTENDANT1) {
                        ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
                    }
                    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                        case 1:
                            {
                                english=" Huh?! You won\'t help me?",
                            }
                        case 2:
                            {
                                english=" What?! You won\'t help me?",
                            }
                        default:
                            {
                                english=" Awww! You won\'t help me?",
                            }
                    }
                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                        case 1:
                            {
                                english=" That thing is really, really\nimportant to me!",
                            }
                        case 2:
                            {
                                english=" That thing really means\neverything to me!",
                            }
                        default:
                            {
                                english=" That thing is important to me!",
                            }
                    }
                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                    message_SetFace(ACTOR_ATTENDANT1, FACE_TEARY_EYED, FACE_POS_BOTTOM_R_FACEINW);
                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                        case 1:
                            {
                                english=" If I can\'t get it back...",
                            }
                        case 2:
                            {
                                english=" If I can\'t get it back...",
                            }
                        default:
                            {
                                english=" If I can\'t get it back...",
                            }
                    }
                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                    with (actor ACTOR_ATTENDANT1) {
                        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
                    }
                    WaitExecuteLives(ACTOR_ATTENDANT1);
                    message_SetActor(ACTOR_ATTENDANT1);
                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                        case 1:
                            {
                                english=" Come on, please?[K] Please help me\nget that treasure of mine back!",
                            }
                        case 2:
                            {
                                english=" I\'m serious! Please?[K] Please help\nme get that treasure of mine back!",
                            }
                        default:
                            {
                                english=" Oh, please?[K] Please help me get\nthat treasure of mine back from those guys!",
                            }
                    }
                    switch ( message_SwitchMenu(0, 1) ) {
                        case menu({
                            english="Yes",
                        }):
                            jump @label_2;
                        case menu({
                            english="No",
                        }):
                            jump @label_3;
                        case menu({
                            english="Wh-what should I do?",
                        }):
                        default:
                            §label_4;
                            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                            message_SetActor(ACTOR_ATTENDANT1);
                            message_SwitchTalk ($PARTNER_TALK_KIND) {
                                case 1:
                                    {
                                        english=" We...we don\'t have time for\nthis! Come on!",
                                    }
                                case 2:
                                    {
                                        english=" We don\'t have time to waste.\nCome on!",
                                    }
                                default:
                                    {
                                        english=" We don\'t have any time\nto waste! Let\'s go!",
                                    }
                            }
                            switch ( message_SwitchMenu(0, 1) ) {
                                case menu({
                                    english="G-got it!",
                                }):
                                    jump @label_2;
                                case menu({
                                    english="But you can\'t just... ",
                                }):
                                default:
                                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                    se_Play(8972);
                                    with (actor ACTOR_ATTENDANT1) {
                                        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
                                    }
                                    with (actor ACTOR_ATTENDANT1) {
                                        WaitEffect();
                                    }
                                    WaitExecuteLives(ACTOR_ATTENDANT1);
                                    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                        case 1:
                                            {
                                                english=" That\'s my precious treasure...",
                                            }
                                        case 2:
                                            {
                                                english=" That\'s my precious treasure...",
                                            }
                                        default:
                                            {
                                                english=" That\'s my precious treasure...",
                                            }
                                    }
                                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                    with (actor ACTOR_ATTENDANT1) {
                                        SlidePositionOffset(1, -1, 0);
                                    }
                                    Wait(3);
                                    with (actor ACTOR_ATTENDANT1) {
                                        SlidePositionOffset(1, 1, 0);
                                    }
                                    Wait(3);
                                    with (actor ACTOR_ATTENDANT1) {
                                        SlidePositionOffset(1, -1, 0);
                                    }
                                    Wait(3);
                                    with (actor ACTOR_ATTENDANT1) {
                                        SlidePositionOffset(1, 1, 0);
                                    }
                                    message_SetFace(ACTOR_ATTENDANT1, FACE_TEARY_EYED, FACE_POS_BOTTOM_R_FACEINW);
                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                        case 1:
                                            {
                                                english=" If that disappeared, then I\'d...",
                                            }
                                        case 2:
                                            {
                                                english=" If that disappeared, then I\'d...",
                                            }
                                        default:
                                            {
                                                english=" If that disappeared, then I\'d...",
                                            }
                                    }
                                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                    with (actor ACTOR_ATTENDANT1) {
                                        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
                                    }
                                    WaitExecuteLives(ACTOR_ATTENDANT1);
                                    message_SetActor(ACTOR_ATTENDANT1);
                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                        case 1:
                                            {
                                                english=" Come on, I\'m begging![K]\nPlease help!",
                                            }
                                        case 2:
                                            {
                                                english=" Please![K]\nPlease help!",
                                            }
                                        default:
                                            {
                                                english=" Please![K]\nPlease help!",
                                            }
                                    }
                                    switch ( message_SwitchMenu(0, 1) ) {
                                        case menu({
                                            english="G-got it!",
                                        }):
                                            jump @label_2;
                                        case menu({
                                            english="But I have no memory...",
                                        }):
                                        default:
                                            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                            message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
                                            message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                case 1:
                                                    {
                                                        english=" I know it\'s difficult...but hurry!",
                                                    }
                                                case 2:
                                                    {
                                                        english=" I know it\'s difficult...but hurry!",
                                                    }
                                                default:
                                                    {
                                                        english=" I know it\'s difficult...but hurry!",
                                                    }
                                            }
                                            message_SetActor(ACTOR_ATTENDANT1);
                                            message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                case 1:
                                                    {
                                                        english=" It doesn\'t matter if you have no\nmemory. You can still help! Please!",
                                                    }
                                                case 2:
                                                    {
                                                        english=" It doesn\'t matter if you have no\nmemory. You can still help! Please!",
                                                    }
                                                default:
                                                    {
                                                        english=" It doesn\'t matter if you have no\nmemory. You can still help! Please!",
                                                    }
                                            }
                                            switch ( message_SwitchMenu(0, 1) ) {
                                                case menu({
                                                    english="G-got it!",
                                                }):
                                                    jump @label_2;
                                                case menu({
                                                    english="But I\'m sure I was a human...",
                                                }):
                                                default:
                                                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                                    se_Play(8971);
                                                    with (actor ACTOR_ATTENDANT1) {
                                                        SetEffect(EFFECT_ANGRY, 3);
                                                    }
                                                    with (actor ACTOR_ATTENDANT1) {
                                                        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
                                                    }
                                                    WaitExecuteLives(ACTOR_ATTENDANT1);
                                                    message_SetActor(ACTOR_ATTENDANT1);
                                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                        case 1:
                                                            {
                                                                english=" Argh! [K]Human, ghost, it doesn\'t\nmatter. You can still help! Please!",
                                                            }
                                                        case 2:
                                                            {
                                                                english=" Argh! [K]Human, ghost, it doesn\'t\nmatter. You can still help! Please!",
                                                            }
                                                        default:
                                                            {
                                                                english=" Argh! [K]Human, ghost, it doesn\'t\nmatter. You can still help! Please!",
                                                            }
                                                    }
                                                    with (actor ACTOR_ATTENDANT1) {
                                                        SetEffect(EFFECT_NONE, 3);
                                                    }
                                                    switch ( message_SwitchMenu(0, 1) ) {
                                                        case menu({
                                                            english="G-got it!",
                                                        }):
                                                        case menu({
                                                            english="O-OK!",
                                                        }):
                                                        default:
                                                            break;
                                                    }
                                                    jump @label_2;
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                    }
                    break;
                case menu({
                    english="Wh-what should I do?",
                }):
                    jump @label_4;
            }
            break;
        default:
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(I\'ve turned into a [c_kind:PLAYER]!)",
                    }
                default:
                    {
                        english="(I\'ve turned into a [c_kind:PLAYER]!)",
                    }
            }
            jump @label_1;
    }
}
