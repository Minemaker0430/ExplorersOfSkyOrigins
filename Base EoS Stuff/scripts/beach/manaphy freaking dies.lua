
def 0 {
    bgm_FadeOut(60);
    $SCENARIO_MAIN = scn[29, 49];
    back_SetGround(LEVEL_D01P11A);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    bgm_PlayFadeIn(BGM_OCEAN1, 90, 256);
    screen_FadeIn(1, 30);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(33152, -128, 0);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionOffset(33152, -128, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_PAIN, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Huff-huff...",
            }
        case 2:
            {
                english=" Huff-huff...",
            }
        default:
            {
                english=" Huff-huff...",
            }
    }
    message_Close();
    se_Play(8967);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    Wait(5);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_PLAYER) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_PLAYER);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Hey! [CS:N]Manaphy[CR]!",
            }
        case 2:
            {
                english=" Hey! [CS:N]Manaphy[CR]!",
            }
        default:
            {
                english=" Oh! [CS:N]Manaphy[CR]!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (performer 0) {
        MovePositionMark(2, Position<'m0', 55.5, 25.5>);
    }
    with (performer 0) {
        MovePositionMark(2, Position<'m1', 55.5, 21.5>);
    }
    WaitExecutePerformer(0);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(33152, Position<'m2', 63, 24.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(33152, Position<'m3', 59.5, 26.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(33152, Position<'m4', 59, 19.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(33152, Position<'m5', 55.5, 22.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_LEFT);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" [CS:N]Manaphy[CR]!",
            }
        case 2:
            {
                english=" [CS:N]Manaphy[CR]!",
            }
        default:
            {
                english=" [CS:N]Manaphy[CR]!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" [CS:N]Manaphy[CR]! You had us worried!",
            }
        case 2:
            {
                english=" [CS:N]Manaphy[CR]! You had us worried!",
            }
        default:
            {
                english=" [CS:N]Manaphy[CR]! We were worried\nabout you!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" What are you doing here\nanyway?!",
            }
        case 2:
            {
                english=" Why did you come here by\nyourself?!",
            }
        default:
            {
                english=" Why did you decide to come\nhere by yourself?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Hey, [CS:N]Manaphy[CR]?",
            }
        case 2:
            {
                english=" Hey, [CS:N]Manaphy[CR]?",
            }
        default:
            {
                english=" Hey, [CS:N]Manaphy[CR]?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8964);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...[CS:N]Manaphy[CR]?[K] What\'s wrong?",
            }
        case 2:
            {
                english=" ...[CS:N]Manaphy[CR]?[K] What\'s the matter?",
            }
        default:
            {
                english=" ...[CS:N]Manaphy[CR]?[K] Is something wrong?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        SetAnimation(25);
    }
    with (actor ACTOR_NPC_MANAFI) {
        WaitAnimation();
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    se_Play(8968);
    with (actor ACTOR_PLAYER) {
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
                english=" !!! [CS:N]Manaphy[CR]!",
            }
        case 2:
            {
                english=" !!! [CS:N]Manaphy[CR]!",
            }
        default:
            {
                english=" !!! [CS:N]Manaphy[CR]!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(1, -8, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    se_Play(8967);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SHOCKED, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNLEFT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This is bad, [hero]![K]\nHe\'s burning up with a fever!",
            }
        case 2:
            {
                english=" Trouble, [hero]![K]\nHe\'s running a high fever!",
            }
        default:
            {
                english=" This is bad, [hero]![K]\nHe\'s burning up with a fever!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_MANAFI);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        MovePositionOffset(1, 0, -8);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" [CS:N]Manaphy[CR]![K] Hang on, [CS:N]Manaphy[CR]!",
            }
        case 2:
            {
                english=" [CS:N]Manaphy[CR]![K] Hang on, [CS:N]Manaphy[CR]!",
            }
        default:
            {
                english=" [CS:N]Manaphy[CR]![K] Hold on, [CS:N]Manaphy[CR]!",
            }
    }
    message_Close();
    bgm_FadeOut(180);
    screen_FadeOut(1, 90);
    Wait(30);
    WaitBgm(BGM_OCEAN1);
    end;
}
