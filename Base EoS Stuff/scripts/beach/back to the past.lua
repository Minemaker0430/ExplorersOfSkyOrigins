
def 0 {
    sound_Stop();
    back_SetBanner2(407, 0, 152, 120, 16, {
        english="A New Dawn",
    });
    screen_FadeIn(1, 45);
    Wait(160);
    screen_FadeOut(1, 45);
    Wait(15);
    $SCENARIO_MAIN = scn[21, 1];
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03A);
    back_SetGround(LEVEL_D01P11A);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    with (actor ACTOR_PLAYER) {
        SetAnimation(76);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(76);
    }
    with (actor ACTOR_NPC_JUPUTORU) {
        SetAnimation(29);
    }
    bgm_PlayFadeIn(BGM_OCEAN1, 90, 256);
    screen2_FadeIn(0, 60);
    screen_FadeIn(1, 60);
    Wait(120);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, 1, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(2);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, -1, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(30);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, 1, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(2);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, -1, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(2);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, 1, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(2);
    with (actor ACTOR_PLAYER) {
        SlidePositionOffset(1, -1, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(30);
    with (actor ACTOR_PLAYER) {
        SetAnimation(63);
    }
    with (actor ACTOR_PLAYER) {
        WaitAnimation();
    }
    Wait(60);
    with (actor ACTOR_PLAYER) {
        SetAnimation(2);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(8, 10, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(...............)",
            }
        default:
            {
                english="(...............)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(This...[K] This is...)",
            }
        default:
            {
                english="(This...[K] This is...)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        ExecuteCommon(CORO_LOOK_AROUND_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(1, 1, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(2);
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(1, -1, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(2);
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(1, 1, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(2);
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(1, -1, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_PAIN, FACE_POS_BOTTOM_L_FACEOUTW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...Urk...",
            }
        case 2:
            {
                english=" ...Urk...",
            }
        default:
            {
                english=" ...Urk...",
            }
    }
    message_Close();
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(63);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitAnimation();
    }
    Wait(60);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(2);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_LOOK_AROUND_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Huh...[K] [hero], where...?",
            }
        case 2:
            {
                english=" What...[K] [hero], where...?",
            }
        default:
            {
                english=" What...[K] [hero], where...?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_LOOK_AROUND_LEFT_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(20);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Isn\'t this...[K]where I met you,\n[hero]...?",
            }
        case 2:
            {
                english=" Isn\'t this...[K]where I met you,\n[hero]...?",
            }
        default:
            {
                english=" Isn\'t this...[K]where I met you,\n[hero]...?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It\'s like...that beach...",
            }
        case 2:
            {
                english=" It\'s like...that beach...",
            }
        default:
            {
                english=" It\'s like...that beach...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" So that means...[K] Could it be?",
            }
        case 2:
            {
                english=" So that means...[K] Could it be?",
            }
        default:
            {
                english=" So that means...[K] Could it be?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8971);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" No, it is!",
            }
        case 2:
            {
                english=" No, it is!",
            }
        default:
            {
                english=" No, it is!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We\'re...[K]in the past!",
            }
        case 2:
            {
                english=" We\'re...[K]in the past!",
            }
        default:
            {
                english=" We\'re...[K]in the past!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We\'re back in our world!",
            }
        case 2:
            {
                english=" We made it back to our world!",
            }
        default:
            {
                english=" We\'re back in our world!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_LAUGHING, 3);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_JOYOUS, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Yes![K] We did it, [hero]!",
            }
        case 2:
            {
                english=" Yes![K] We made it, [hero]!",
            }
        default:
            {
                english=" Yes![K] We made it, [hero]!",
            }
    }
    message_Close();
    Wait(45);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_NONE, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_NONE, 3);
    }
    with (actor ACTOR_NPC_JUPUTORU) {
        SlidePositionOffset(1, 1, 0);
    }
    WaitExecuteLives(ACTOR_NPC_JUPUTORU);
    Wait(2);
    with (actor ACTOR_NPC_JUPUTORU) {
        SlidePositionOffset(1, -1, 0);
    }
    WaitExecuteLives(ACTOR_NPC_JUPUTORU);
    Wait(2);
    with (actor ACTOR_NPC_JUPUTORU) {
        SlidePositionOffset(1, 1, 0);
    }
    WaitExecuteLives(ACTOR_NPC_JUPUTORU);
    Wait(2);
    with (actor ACTOR_NPC_JUPUTORU) {
        SlidePositionOffset(1, -1, 0);
    }
    WaitExecuteLives(ACTOR_NPC_JUPUTORU);
    message_SetFace(ACTOR_NPC_JUPUTORU, FACE_PAIN, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" Ugh...",
    });
    message_Close();
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    se_Play(8978);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
    }
    with (actor ACTOR_NPC_JUPUTORU) {
        SetAnimation(31);
    }
    with (actor ACTOR_NPC_JUPUTORU) {
        WaitAnimation();
    }
    WaitExecuteLives(ACTOR_NPC_JUPUTORU);
    with (actor ACTOR_NPC_JUPUTORU) {
        SetAnimation(2);
    }
    Wait(30);
    with (actor ACTOR_NPC_JUPUTORU) {
        Turn2Direction(4, 10, DIR_UPLEFT);
    }
    WaitExecuteLives(ACTOR_NPC_JUPUTORU);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_Talk({
        english=" Hey! [CS:N]Grovyle[CR]!",
    });
    message_Close();
    with (actor ACTOR_NPC_JUPUTORU) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    WaitExecuteLives(ACTOR_NPC_JUPUTORU);
    with (performer 0) {
        MovePositionMark(1, Position<'m1', 49, 22.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(33075, Position<'m2', 47, 20.5>);
    }
    Wait(10);
    with (actor ACTOR_PLAYER) {
        MovePositionMark(33075, Position<'m3', 47, 23.5>);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Look around![K] We made it home!",
            }
        case 2:
            {
                english=" Look![K] We made it home!",
            }
        default:
            {
                english=" Look around![K] We made it home!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Back to our world!",
            }
        case 2:
            {
                english=" Back to our world!",
            }
        default:
            {
                english=" Back to our world!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_Talk({
        english=" So we did it...?",
    });
    message_Talk({
        english=" We made it through...",
    });
    message_Talk({
        english=" back to this world?",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Yup!",
            }
        case 2:
            {
                english=" Yes!",
            }
        default:
            {
                english=" Yep!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This is where I met\n[hero].",
            }
        case 2:
            {
                english=" This is where I met\n[hero].",
            }
        default:
            {
                english=" This is where I met\n[hero].",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNLEFT);
    }
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_LEFT);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Let\'s see...",
            }
        case 2:
            {
                english=" Let\'s see...",
            }
        default:
            {
                english=" Let me see...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (performer 0) {
        MovePositionMark(1, Position<'m4', 45, 22.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m5', 37, 20.5>);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(8, 2, DIR_LEFT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_L_FACEOUTW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It was around here.",
            }
        case 2:
            {
                english=" I think it was right here.",
            }
        default:
            {
                english=" It would be around here.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_L_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This was where I found\n[hero] out cold.",
            }
        case 2:
            {
                english=" This was where I found\n[hero] out cold.",
            }
        default:
            {
                english=" [hero] was out cold\nright here.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_TOP_R_FACEINW);
    message_Talk({
        english=" So that\'s what happened.",
    });
    message_Talk({
        english=" That trip through time sent me\ninto the Eastern Forest.",
    });
    message_Talk({
        english=" And [hero] and I both\nreached your world far away from each other.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8964);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_TOP_L_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Oh, that\'s right!",
            }
        case 2:
            {
                english=" Oh, that\'s right!",
            }
        default:
            {
                english=" Oh, that\'s right!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" There\'s a lot I don\'t understand!\nLike the whole time-travel thing!",
            }
        case 2:
            {
                english=" There\'s a lot I don\'t understand!\nLike the whole concept of time travel!",
            }
        default:
            {
                english=" I\'m really confused by a lot of\nthings! Like this whole concept of time travel!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Can you explain it to us, please?",
            }
        case 2:
            {
                english=" Will you please explain it to us?",
            }
        default:
            {
                english=" Will you please explain it to us?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNLEFT);
    }
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWN);
    }
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But this isn\'t really the place to\ntalk, so...",
            }
        case 2:
            {
                english=" But this isn\'t really the place to\ntalk, so...",
            }
        default:
            {
                english=" But this isn\'t really the place to\ntalk, so...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Let\'s go to [CS:N]Wigglytuff[CR]\'s Guild\nand talk there.",
            }
        case 2:
            {
                english=" Let\'s go to [CS:N]Wigglytuff[CR]\'s Guild\nand talk there.",
            }
        default:
            {
                english=" Let\'s go to [CS:N]Wigglytuff[CR]\'s Guild\nand talk there.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Before we went to the future,\nwe trained there and lived there. It\'s the\nperfect place.",
            }
        case 2:
            {
                english=" Before we went to the future,\nwe trained there and roomed there. It will be\nthe perfect place!",
            }
        default:
            {
                english=" Before we went to the future,\nwe trained there and roomed there. It will be\nthe perfect place!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" All right. Let\'s go to\n[CS:N]Wigglytuff[CR]\'s Guild.",
            }
        case 2:
            {
                english=" OK. Let\'s go to [CS:N]Wigglytuff[CR]\'s\nGuild.",
            }
        default:
            {
                english=" OK. Let\'s go to [CS:N]Wigglytuff[CR]\'s\nGuild.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(1, 32, 32);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m6', 50, 24.5>);
    }
    Wait(30);
    with (performer 0) {
        MovePositionMark(1, Position<'m7', 49, 22.5>);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(16, 10, DIR_DOWNRIGHT);
    }
    with (actor ACTOR_NPC_JUPUTORU) {
        Turn2Direction(16, 10, DIR_DOWNLEFT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" Hold on.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8964);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_TWO_ARROWS_AT_SIDE_RIGHT, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    message_Talk({
        english=" Will I be well received if I go\nto the guild?",
    });
    message_Talk({
        english=" After all, I\'m a wanted outlaw in\nthis world.",
    });
    message_Talk({
        english=" If I went to your guild...[K]won\'t\neveryone be shocked?",
    });
    message_Talk({
        english=" Don\'t you think they\'d try to\ncapture me?",
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
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Urk! Come to think of it, you\'re\nright...[K] What to do...?",
            }
        case 2:
            {
                english=" Urk! Come to think of it, you\'re\nright...[K] What to do...?",
            }
        default:
            {
                english=" Urk! Come to think of it, you\'re\nright...[K] What should we do?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(20);
    se_Play(8964);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_EXCLAMATION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Oh, I know![K] There\'s a good place.",
            }
        case 2:
            {
                english=" Oh, I know![K] There\'s a good place.",
            }
        default:
            {
                english=" Oh, I know![K] There\'s a good place.",
            }
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But it will mean cutting through\nTreasure Town...",
            }
        case 2:
            {
                english=" But it will involve going through\nTreasure Town...",
            }
        default:
            {
                english=" But we\'ll need to go through\nTreasure Town...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_TOP_R_CENTER);
    message_Talk({
        english=" It shouldn\'t be a problem if we\nlie low and sneak through.",
    });
    message_Talk({
        english=" Lead the way.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" All right. It\'s this way.",
            }
        case 2:
            {
                english=" OK. It\'s this way.",
            }
        default:
            {
                english=" OK. It\'s this way.",
            }
    }
    message_Close();
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(1, 160, 0);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(8, 10, DIR_RIGHT);
    }
    with (actor ACTOR_NPC_JUPUTORU) {
        Turn2Direction(8, 10, DIR_RIGHT);
    }
    Wait(60);
    with (actor ACTOR_PLAYER) {
        MovePositionOffset(1, 160, 0);
    }
    Wait(30);
    with (actor ACTOR_NPC_JUPUTORU) {
        MovePositionOffset(1, 160, 0);
    }
    Wait(30);
    screen2_FadeOut(0, 60);
    bgm_FadeOut(120);
    screen_FadeOut(1, 60);
    back2_SetMode(0);
    Wait(60);
    WaitBgm(BGM_OCEAN1);
    $SPECIAL_EPISODE_OPEN[3] = 1;
    me_Play(7);
    message_Explanation({
        english="[CN]There\'s a message from the\n[CN]Exploration Team Federation.[W:30]",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    back_SetGround(LEVEL_P26P01A);
    supervision_Acting(10);
    with (performer 0) {
        camera_SetMyself();
    }
    screen_FadeIn(1, 15);
    Wait(30);
    me_Play(5);
    message_Mail({
        english="[CN]Special Episode\n[CN]\"Here Comes Team Charm!\"\n[CN]has been unlocked![W:90]",
    });
    message_Mail({
        english="[CN]To play a Special Episode,\n[CN]select it from the Episode List\n[CN]on the Top Menu.",
    });
    message_Mail({
        english="[CN]If you would like to play the Special Episode,\n[CN]save your adventure progress, and\n[CN]return to the Top Menu.",
    });
    message_Close();
    screen_FadeOut(1, 30);
    Wait(60);
    $SCENARIO_MAIN_BIT_FLAG[8] = 1;
    $COMPULSORY_SAVE_POINT = 16;
    CallCommon(CORO_HANYOU_SAVE_FUNC);
    end;
}
