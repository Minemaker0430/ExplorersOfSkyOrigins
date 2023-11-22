
def 0 {
    sound_Stop();
    back_SetGround(LEVEL_D01P41A);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        SetAnimation(24);
    }
    with (actor ACTOR_NPC_DOGAASU) {
        SetAnimation(24);
    }
    screen_FadeIn(1, 30);
    bgm_PlayFadeIn(BGM_IN_THE_DEPTHS_OF_THE_PIT, 0, 256);
    se_Play(8972);
    with (actor ACTOR_NPC_DOGAASU) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_NPC_DOGAASU) {
        WaitEffect();
    }
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Owowow...",
    });
    WaitExecuteLives(ACTOR_NPC_DOGAASU);
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8972);
    with (actor ACTOR_NPC_ZUBATTO) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        WaitEffect();
    }
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Ugh...[K] We got roughed up...",
    });
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    message_Close();
    screen_FadeOut(1, 60);
    Wait(45);
    with (actor ACTOR_NPC_ZUBATTO) {
        SetAnimation(2);
    }
    with (actor ACTOR_NPC_DOGAASU) {
        SetAnimation(2);
    }
    screen_FadeIn(1, 30);
    Wait(20);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" B-blast it... How\'d we get wiped\nout by wimps like them?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Bah![K] Here you go. Take it, then!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2Direction(4, 10, DIR_DOWNLEFT);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    se_Play(6406);
    supervision_Acting(1);
    with (object OBJECT_G01P01A1_93) {
        SetHeight(10);
    }
    with (object OBJECT_G01P01A1_93) {
        Move2PositionMark(2, Position<'m0', 28.5, 23>);
    }
    WaitExecuteObject(OBJECT_G01P01A1_93);
    with (object OBJECT_G01P01A1_93) {
        MoveHeight(2, 0);
    }
    Wait(2);
    with (object OBJECT_G01P01A1_93) {
        MoveHeight(2, 6);
    }
    Wait(1);
    with (object OBJECT_G01P01A1_93) {
        MoveHeight(2, 0);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UPLEFT);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    Wait(30);
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2Direction(4, 10, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_TOP_L_CENTER);
    message_Talk({
        english=" Whoa-ho![K] Don\'t think you\'re so\nawesome. Your victory was a fluke!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UP);
    }
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Yeah, you just remember that!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(7430);
    with (actor ACTOR_NPC_DOGAASU) {
        Move2PositionMark(33408, Position<'m1', 23, 23.5>);
    }
    Wait(10);
    with (actor ACTOR_NPC_ZUBATTO) {
        SetAnimation(768);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        Move2PositionMark(33408, Position<'m2', 33.5, 23.5>);
    }
    with (actor ACTOR_NPC_DOGAASU) {
        MovePositionMark(33408, Position<'m3', 22, 39.5>);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        MovePositionMark(33408, Position<'m4', 34, 39.5>);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 1, DIR_DOWN);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 2, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_NPC_ZUBATTO);
    Wait(60);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 2, DIR_UPRIGHT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 1, DIR_UPLEFT);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(32972, 8, -8);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_INSPIRED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Oh! It\'s my Relic Fragment!",
            }
        case 2:
            {
                english=" Oh! It\'s my Relic Fragment!",
            }
        default:
            {
                english=" Oh! It\'s my Relic Fragment!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(32972, 8, -8);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    se_Play(8710);
    supervision_RemoveActing(1);
    WaitSe(8710);
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Am I ever glad...[K] I actually\nmanaged to get it back.",
            }
        case 2:
            {
                english=" Am I ever glad...[K] I actually did\nmanage to get it back.",
            }
        default:
            {
                english=" Thank goodness...[K] I actually\nmanaged to get it back.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_TEARY_EYED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It\'s because you were there to\nhelp me, [hero].",
            }
        case 2:
            {
                english=" It\'s only because you agreed to\nhelp me, [hero].",
            }
        default:
            {
                english=" This happened only because you\nhelped me, [hero].",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Thanks, [hero]!",
            }
        case 2:
            {
                english=" Thank you, [hero]!",
            }
        default:
            {
                english=" Thank you, [hero]!",
            }
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_Close();
    bgm_FadeOut(120);
    screen_FadeOut(1, 60);
    WaitBgm(BGM_IN_THE_DEPTHS_OF_THE_PIT);
    end;
}
