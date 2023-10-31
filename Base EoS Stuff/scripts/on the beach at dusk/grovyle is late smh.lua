
def 0 {
    sound_Stop();
    back_SetBanner2(377, 0, 160, 72, 18, {
        english="Lapras",
    });
    screen_FadeIn(1, 45);
    Wait(160);
    screen_FadeOut(1, 45);
    Wait(15);
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03C);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    Wait(1);
    with (performer 0) {
        MovePositionMark(1, Position<'m1', 54, 22.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m2', 66.5, 24.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m3', 66.5, 24.5>);
    }
    screen2_FadeIn(0, 30);
    bgm_PlayFadeIn(BGM_OCEAN1, 90, 256);
    screen_FadeIn(1, 30);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m4', 51.5, 21.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m5', 57, 24.5>);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(20);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I was hoping that [CS:N]Grovyle[CR] would\nbe here.",
            }
        case 2:
            {
                english=" I was hoping to see [CS:N]Grovyle[CR]\nhere.",
            }
        default:
            {
                english=" I was hoping to see [CS:N]Grovyle[CR]\nhere.",
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
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It doesn\'t look like he\'s here.",
            }
        case 2:
            {
                english=" No, he\'s not here after all.",
            }
        default:
            {
                english=" I guess he\'s not here after all...",
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
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_LOOK_AROUND_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Speaking of not being here...[K]\nThe [CS:N]Krabby[CR] aren\'t here, either.",
            }
        case 2:
            {
                english=" Speaking of not being here...[K]\nThe [CS:N]Krabby[CR] aren\'t here, either.",
            }
        default:
            {
                english=" Speaking of not being here...[K]\nThe [CS:N]Krabby[CR] aren\'t here, either.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" They\'re always out in the\nevening blowing bubbles.",
            }
        case 2:
            {
                english=" They always come out here in\nthe evening to blow bubbles.",
            }
        default:
            {
                english=" They always come out to blow\nbubbles here in the evening.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNLEFT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_LOOK_AROUND_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I love seeing their bubbles go\nfloating off.",
            }
        case 2:
            {
                english=" I love seeing their bubbles go\nfloating away in the evening sky.",
            }
        default:
            {
                english=" I love seeing their bubbles go\nfloating away in the evening sky.",
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
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Well, that\'s too bad.[K] It\'s a\nletdown, but...",
            }
        case 2:
            {
                english=" Well, that\'s too bad.[K] It\'s a\nletdown, but...",
            }
        default:
            {
                english=" Well, that\'s too bad.[K] It\'s a\nletdown, but...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(8, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_INSPIRED, FACE_POS_BOTTOM_L_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...Look, [hero]...",
            }
        case 2:
            {
                english=" ...Look, [hero]...",
            }
        default:
            {
                english=" ...Look, [hero]...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" The sunset is sure pretty, just\nlike it always is.",
            }
        case 2:
            {
                english=" The sunset\'s beautiful, like it\nalways is.",
            }
        default:
            {
                english=" The sunset is sure pretty.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(20);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" You know...",
            }
        case 2:
            {
                english=" You know...",
            }
        default:
            {
                english=" You know...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(32896, 8, 8);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(15);
    se_Play(6410);
    supervision_Acting(1);
    with (object OBJECT_G01P01A1_93) {
        SetOutputAttribute(2);
    }
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(5);
    }
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(32896, -8, -8);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(2);
    }
    Wait(20);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It was my dream to solve the\nsecret of my Relic Fragment.",
            }
        case 2:
            {
                english=" It was my dream to solve the\nsecret of my Relic Fragment.",
            }
        default:
            {
                english=" It was my dream to solve the\nsecret of my Relic Fragment.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But I would have never guessed\nthat the Relic Fragment was connected to the\n[CS:P]Hidden Land[CR].",
            }
        case 2:
            {
                english=" But I would have never guessed\nthat the Relic Fragment was connected to the\n[CS:P]Hidden Land[CR].",
            }
        default:
            {
                english=" But I would have never guessed\nthat the Relic Fragment was connected to the\n[CS:P]Hidden Land[CR].",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That reminds me...",
            }
        case 2:
            {
                english=" That reminds me...",
            }
        default:
            {
                english=" That reminds me...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It was here that [CS:N]Koffing[CR] and\nhis sidekick stole my Relic Fragment.",
            }
        case 2:
            {
                english=" It was here, wasn\'t it? Where\n[CS:N]Koffing[CR] and his sidekick stole my Relic\nFragment?",
            }
        default:
            {
                english=" It was here, wasn\'t it? Where\n[CS:N]Koffing[CR] and his sidekick stole my Relic\nFragment?",
            }
    }
    message_Close();
    bgm_FadeOut(60);
    screen2_FadeOut(0, 30);
    screen_FadeOut(1, 30);
    back2_SetMode(0);
    end;
}
