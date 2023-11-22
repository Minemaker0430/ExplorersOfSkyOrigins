
def 0 {
    sound_Stop();
    back_SetDungeonBanner(2, 0);
    screen_FadeIn(1, 16);
    Wait(60);
    screen_FadeOut(1, 16);
    Wait(15);
    back_SetGround(LEVEL_D01P41A);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        SetAnimation(5);
    }
    screen_FadeIn(1, 30);
    bgm_PlayFadeIn(BGM_IN_THE_DEPTHS_OF_THE_PIT, 0, 256);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(33075, Position<'m0', 26.5, 25.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(33075, Position<'m1', 30.5, 25.5>);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(15);
    se_Play(8962);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Huh?",
            }
        case 2:
            {
                english=" What?",
            }
        default:
            {
                english=" Oh... What?",
            }
    }
    message_Close();
    se_Play(8964);
    with (actor ACTOR_NPC_DOGAASU) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    with (actor ACTOR_NPC_DOGAASU) {
        Turn2Direction(4, 1, DIR_DOWN);
    }
    Wait(5);
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2Direction(4, 2, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    Wait(15);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Why are you still here?",
            }
        case 2:
            {
                english=" What are you still doing here?",
            }
        default:
            {
                english=" Why are you still here?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I figured you would be long gone\nand far away by now.",
            }
        case 2:
            {
                english=" I thought you would have gotten\nfar away by now.",
            }
        default:
            {
                english=" I expected you to have gotten\nfar away by now.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8972);
    with (actor ACTOR_NPC_DOGAASU) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_NPC_DOGAASU) {
        WaitEffect();
    }
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Y-you...[K] Shut up!",
    });
    WaitExecuteLives(ACTOR_NPC_DOGAASU);
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" We can\'t find our way out of\nthis place!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8973);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    with (actor ACTOR_PLAYER) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(45);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Whoa-ho-ho![K] But there\'s nothing\nto fear, is there? It\'s only you!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Heh-heh-heh! Once a pushover,\nalways a pushover!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" We\'ll show you what a wimp you\nare all over again![K] You ready?",
    });
    message_Close();
    bgm_Stop();
    se_Play(5143);
    screen_WhiteOut(1, 2);
    Wait(2);
    screen_FadeIn(1, 2);
    Wait(10);
    se_Play(5143);
    screen_WhiteOut(1, 2);
    Wait(2);
    screen_FadeIn(1, 2);
    WaitSe(5143);
    CallCommon(CORO_BOSS_WIPE_FUNC);
    main_EnterDungeon(2, 30);
    main_EnterDungeon(-1, 30);
    hold;
    end;
}
