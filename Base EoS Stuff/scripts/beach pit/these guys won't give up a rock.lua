
def 0 {
    sound_Stop();
    back_SetDungeonBanner(2, 0);
    screen_FadeIn(1, 16);
    Wait(60);
    screen_FadeOut(1, 16);
    Wait(15);
    $SCENARIO_MAIN = scn[2, 3];
    back_SetGround(LEVEL_D01P41A);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
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
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(33075, 0, -8);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_DETERMINED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Uh...[K] Hey!",
            }
        case 2:
            {
                english=" Uh...[K] Hey!",
            }
        default:
            {
                english=" Um...[K] Hey!",
            }
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
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
    WaitExecuteLives(ACTOR_NPC_DOGAASU);
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2Direction(4, 2, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    Wait(20);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Well, well...",
    });
    message_Talk({
        english=" If it isn\'t our old friend, the\nbig chicken.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(5);
    }
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(1, 0, 8);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(2);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_PAIN, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Urk!",
            }
        case 2:
            {
                english=" Urk!",
            }
        default:
            {
                english=" Urk!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(10);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(1, 0, -8);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(15);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SHOUTING, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Give me...[K] Give me back what\nyou stole from me!",
            }
        case 2:
            {
                english=" Give me...[K] Give me back what\nyou stole from me!",
            }
        default:
            {
                english=" Give me...[K] Give me back what\nyou stole from me!",
            }
    }
    se_Play(8971);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_KeyWait();
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That\'s my personal treasure!\nIt means everything to me!",
            }
        case 2:
            {
                english=" That\'s my personal treasure!\nIt means everything to me!",
            }
        default:
            {
                english=" That\'s my personal treasure!\nIt means everything to me!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Treasure, you say?[K] So that\nthing really is valuable, huh?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" It could be worth more than\nwe\'d hoped for, I\'d say.",
    });
    message_Talk({
        english=" We ought to try selling it.\nWho knows? It might get a good price.",
    });
    message_Talk({
        english=" Whoa-ho-ho![K] All the more\nreason not to give it back!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_DOGAASU) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    se_Play(8968);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(5);
    }
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(1, 0, 8);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Whaaaat?!",
            }
        case 2:
            {
                english=" Whaaaat?!",
            }
        default:
            {
                english=" You can\'t!",
            }
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(2);
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_DOGAASU) {
        SetEffect(EFFECT_NONE, 3);
    }
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" If you want it back that\nbadly...[K] Come and get it! Heh-heh-heh!",
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
