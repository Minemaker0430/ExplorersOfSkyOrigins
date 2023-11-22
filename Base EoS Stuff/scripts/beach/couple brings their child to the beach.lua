
def 0 {
    sound_Stop();
    $ATTENDANT2_KIND = 0;
    $SCENARIO_MAIN = scn[29, 47];
    back_SetGround(LEVEL_D01P11A);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    bgm2_PlayFadeIn(BGM_OCEAN1, 90, 256);
    screen_FadeIn(1, 30);
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(1, -140, 0);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionOffset(1, -140, 0);
    }
    with (actor ACTOR_NPC_MANAFI) {
        MovePositionOffset(32896, -80, 0);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Come on, [CS:N]Manaphy[CR]. Over here.",
            }
        case 2:
            {
                english=" Come on, [CS:N]Manaphy[CR]. Over here.",
            }
        default:
            {
                english=" Come on, [CS:N]Manaphy[CR]. Over here.",
            }
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (performer 0) {
        MovePositionMark(32972, Position<'m0', 63, 25.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m1', 66, 24.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m2', 66, 26.5>);
    }
    with (actor ACTOR_NPC_MANAFI) {
        MovePositionMark(32972, Position<'m3', 66, 25.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m4', 60, 20.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m5', 60, 23.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    Wait(15);
    se_Play(8978);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_NPC_MANAFI) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" !!!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (performer 0) {
        MovePositionMark(1, Position<'m6', 63, 23>);
    }
    with (actor ACTOR_NPC_MANAFI) {
        MovePositionMark(1, Position<'m7', 66, 20.5>);
    }
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    bgm_PlayFadeIn(BGM_HEARTWARMING, 0, 256);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    with (actor ACTOR_NPC_MANAFI) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_JOYOUS, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Kyakya! ♪ Kyakya! ♪",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" [CS:N]Manaphy[CR], this is the sea. Sea...",
            }
        case 2:
            {
                english=" [CS:N]Manaphy[CR], this is the sea. Sea...",
            }
        default:
            {
                english=" [CS:N]Manaphy[CR], this is the sea. Sea...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_NONE, 3);
    }
    Wait(15);
    se_Play(8962);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    with (actor ACTOR_NPC_MANAFI) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Sea?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That\'s right, sea.[K] That\'s where\nyou came from.",
            }
        case 2:
            {
                english=" That\'s right, sea.[K] That\'s where\nyou came from.",
            }
        default:
            {
                english=" That\'s right, sea.[K] That\'s where\nyou came from.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_JOYOUS, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Sea! Sea!",
    });
    message_Close();
    with (actor ACTOR_NPC_MANAFI) {
        MovePositionOffset(1, -28, 0);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    message_Talk({
        english=" [partner]! ♪",
    });
    with (actor ACTOR_NPC_MANAFI) {
        SetAnimation(5);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 0, -8);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_DOWNLEFT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, -8, -8);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_DOWN);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UP);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, -16, 0);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UP);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_DOWNRIGHT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, -12, 8);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_RIGHT);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_LEFT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 0, 16);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_UPRIGHT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 8, 8);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 8, 0);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_DOWN);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWN);
    }
    message_CloseEnforce();
    Wait(10);
    message_Talk({
        english=" [hero]! ♪",
    });
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 8, 0);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_DOWNLEFT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 8, 8);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_LEFT);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 0, 12);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_UPLEFT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, -8, 8);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_UP);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_DOWN);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, -16, 0);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_UPRIGHT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, -8, -8);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_RIGHT);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_LEFT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 0, -16);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_DOWNRIGHT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 8, -8);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SetDirection(DIR_DOWN);
    }
    with (actor ACTOR_NPC_MANAFI) {
        SlidePositionOffset(1, 16, 0);
    }
    with (actor ACTOR_NPC_MANAFI) {
        MovePositionOffset(1, 24, 0);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 10, DIR_LEFT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_NONE, 3);
    }
    Wait(15);
    with (actor ACTOR_NPC_MANAFI) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_CloseEnforce();
    Wait(10);
    message_Talk({
        english=" Sea! Sea!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Ha, [hero].[K] [CS:N]Manaphy[CR]\nseems to be really happy.",
            }
        case 2:
            {
                english=" Ha, [hero].[K] [CS:N]Manaphy[CR]\'s\nreally happy.",
            }
        default:
            {
                english=" Ha, [hero].[K] [CS:N]Manaphy[CR]\'s\nreally happy to be here.",
            }
    }
    message_KeyWait();
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_NONE, 3);
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I\'m glad we brought him down to\nthe beach.",
            }
        case 2:
            {
                english=" It\'s great we brought him down\nto the beach.",
            }
        default:
            {
                english=" I\'m glad we brought him down to\nthe beach.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_MANAFI) {
        MovePositionOffset(32972, 0, -24);
    }
    Wait(15);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    with (actor ACTOR_NPC_MANAFI) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    with (actor ACTOR_NPC_MANAFI) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    message_SetFace(ACTOR_NPC_MANAFI, FACE_HAPPY, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Sea! ♪ Sea! ♪",
    });
    message_Close();
    with (actor ACTOR_NPC_MANAFI) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_NPC_MANAFI);
    Wait(60);
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 2, DIR_DOWN);
    }
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 2, DIR_UP);
    }
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 2, DIR_DOWN);
    }
    with (actor ACTOR_NPC_MANAFI) {
        Turn2Direction(4, 2, DIR_UP);
    }
    with (actor ACTOR_NPC_MANAFI) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    bgm_FadeOut(180);
    bgm2_FadeOut(180);
    screen_FadeOut(1, 90);
    WaitBgm(BGM_OCEAN1);
    Wait(90);
    message_Narration(30, {
        english="[CN]And so [CS:N]Manaphy[CR], [hero], and\n[CN][partner] played until sunset.",
    });
    message_Narration(30, {
        english="[CN]That night...",
    });
    message_Close();
    Wait(30);
    end;
}
