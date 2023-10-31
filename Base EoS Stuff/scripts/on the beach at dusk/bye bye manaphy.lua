
def 0 {
    sound_Stop();
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03B);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    bgm2_PlayFadeIn(BGM_OCEAN1, 90, 256);
    screen2_FadeIn(0, 60);
    screen_FadeIn(1, 60);
    Wait(30);
    message_SetFace(ACTOR_NPC_PERAPPU, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" The Guildmaster and I decided to\ninvite [CS:N]Walrein[CR] from the Northern Sea.",
    });
    message_Talk({
        english=" We felt that [CS:N]Walrein[CR] would be\nideal for looking after [CS:N]Manaphy[CR].",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_TODOZERUGA, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Aye.[K] I\'ve heard all I need to\nhear from your [CS:N]Wigglytuff[CR].",
    });
    message_Talk({
        english=" You\'ve my word. I\'ll take full\nresponsibility for raising [CS:N]Manaphy[CR].",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Take good care of the little guy.",
            }
        case 2:
            {
                english=" Please take good care of the\nlittle guy.",
            }
        default:
            {
                english=" Please take good care of the\nlittle cutie.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UP);
    }
    with (actor ACTOR_NPC_PERAPPU) {
        Turn2Direction(4, 10, DIR_LEFT);
    }
    WaitExecuteLives(ACTOR_NPC_PERAPPU);
    bgm_PlayFadeIn(BGM_IN_THE_HANDS_OF_FATE, 0, 256);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" [CS:N]Manaphy[CR].[K] From now on, I want\nyou to be good and obey [CS:N]Walrein[CR].",
            }
        case 2:
            {
                english=" [CS:N]Manaphy[CR].[K] From now on, I want\nyou to be good and listen to [CS:N]Walrein[CR].",
            }
        default:
            {
                english=" [CS:N]Manaphy[CR].[K] From now on, I want\nyou to be good and listen to [CS:N]Walrein[CR].",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" And grow strong and healthy in\nthe sea...",
            }
        case 2:
            {
                english=" And grow strong and healthy in\nthe sea...",
            }
        default:
            {
                english=" And grow strong and healthy in\nthe sea...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8962);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    message_SetFace(ACTOR_NPC_MANAFI, FACE_NORMAL, FACE_POS_TOP_C_FACER);
    message_Talk({
        english=" ?",
    });
    with (actor ACTOR_NPC_MANAFI) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_TEARY_EYED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Urf...[K] As you get older...[K]\nDon\'t forget us...",
            }
        case 2:
            {
                english=" Urf...[K] As you get older...[K]\nDon\'t forget us...",
            }
        default:
            {
                english=" Urf...[K] As you get older...[K]\nPlease don\'t forget us...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 10, DIR_DOWNLEFT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    se_Play(8963);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    message_SetFace(ACTOR_NPC_MANAFI, FACE_STUNNED, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" ...?[K] [partner]?",
    });
    with (actor ACTOR_NPC_MANAFI) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_STUNNED, FACE_POS_TOP_C_FACER);
    message_Talk({
        english=" ...[hero]?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(30);
    message_SetFace(ACTOR_NPC_PERAPPU, FACE_STUNNED, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" .....................",
    });
    message_Talk({
        english=" Prolonging this will only make\nit worse...",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_PERAPPU) {
        Turn2Direction(4, 10, DIR_UPLEFT);
    }
    WaitExecuteLives(ACTOR_NPC_PERAPPU);
    message_Talk({
        english=" [CS:N]Walrein[CR], please...",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_TODOZERUGA) {
        Turn2Direction(8, 10, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_NPC_TODOZERUGA);
    message_SetFace(ACTOR_NPC_TODOZERUGA, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Aye.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_TODOZERUGA) {
        Turn2Direction(8, 10, DIR_LEFT);
    }
    WaitExecuteLives(ACTOR_NPC_TODOZERUGA);
    message_Talk({
        english=" We\'re going, [CS:N]Manaphy[CR].",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    Wait(20);
    se_Play(8962);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    with (actor ACTOR_NPC_MANAFI) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_STUNNED, FACE_POS_TOP_C_FACER);
    message_Talk({
        english=" ...?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_TODOZERUGA) {
        MovePositionOffset(32896, -16, 0);
    }
    WaitExecuteLives(ACTOR_NPC_TODOZERUGA);
    se_Play(8974);
    with (actor ACTOR_NPC_MANAFI) {
        ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_SURPRISED, FACE_POS_TOP_C_FACER);
    message_Talk({
        english=" ...???",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(1, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    se_Play(8972);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_NPC_MANAFI) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_Talk({
        english=" ...[hero]?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(1, 10, DIR_DOWNLEFT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    se_Play(8972);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_NPC_MANAFI) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_SURPRISED, FACE_POS_TOP_C_FACEL);
    message_Talk({
        english=" ...[partner]?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_TODOZERUGA) {
        Turn2Direction(8, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_NPC_TODOZERUGA);
    Wait(30);
    with (actor ACTOR_NPC_TODOZERUGA) {
        SetAnimation(42);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetAnimation(48);
    }
    with (actor ACTOR_NPC_TODOZERUGA) {
        SlidePositionOffset(32896, 0, -104);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(32896, 0, -104);
    }
    message_SetWaitMode(180, 90);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_CRYING, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" ...[hero]![K] ...[partner]!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetWaitMode(32767, 32767);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_TEARY_EYED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Sniffle...",
            }
        case 2:
            {
                english=" Sniffle...",
            }
        default:
            {
                english=" Sniffle...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Take care...[K] [CS:N]Manaphy[CR].",
            }
        case 2:
            {
                english=" Take care...[K] [CS:N]Manaphy[CR].",
            }
        default:
            {
                english=" Take care...[K] [CS:N]Manaphy[CR].",
            }
    }
    message_Close();
    bgm_FadeOut(180);
    bgm2_FadeOut(180);
    screen2_FadeOut(0, 90);
    screen_FadeOut(1, 90);
    back2_SetMode(0);
    Wait(30);
    WaitBgm(BGM_IN_THE_HANDS_OF_FATE);
    WaitBgm2(BGM_OCEAN1);
    end;
}
