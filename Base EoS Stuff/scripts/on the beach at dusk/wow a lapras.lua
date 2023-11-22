
def 0 {
    sound_Stop();
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03C);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    screen2_FadeIn(0, 30);
    bgm2_PlayFadeIn(BGM_OCEAN1, 90, 256);
    screen_FadeIn(1, 30);
    bgm_PlayFadeIn(BGM_ON_THE_BEACH_AT_DUSK, 0, 256);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I remember...[K] I was too scared\nto get it back by myself.",
            }
        case 2:
            {
                english=" I remember...[K] I was too scared\nto get it back.",
            }
        default:
            {
                english=" I remember...[K] I was too scared\nto go get it back.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" You made me feel brave then,\n[hero].",
            }
        case 2:
            {
                english=" You gave me courage then,\n[hero].",
            }
        default:
            {
                english=" You gave me courage then,\n[hero].",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" You know, that was how we\nstarted, wasn\'t it?",
            }
        case 2:
            {
                english=" You know, that was how we\nreally started as a team.",
            }
        default:
            {
                english=" You know, that was how we\nreally started as a team.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Getting back this Relic Fragment\nwas Team [team:]\'s first adventure.",
            }
        case 2:
            {
                english=" Getting back this Relic Fragment\nwas Team [team:]\'s first adventure.",
            }
        default:
            {
                english=" Getting back this Relic Fragment\nwas Team [team:]\'s first adventure.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" And now, we\'re using the same\nRelic Fragment so we can go to the [CS:P]Hidden\nLand[CR].",
            }
        case 2:
            {
                english=" And now, we\'re using the same\nRelic Fragment so we can go to the [CS:P]Hidden\nLand[CR].",
            }
        default:
            {
                english=" And now, we\'re using the same\nRelic Fragment so we can go to the [CS:P]Hidden\nLand[CR].",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It\'s strange when you think\nabout it.",
            }
        case 2:
            {
                english=" If you think about it, it\'s kind\nof strange.",
            }
        default:
            {
                english=" If you think about it, it\'s kind\nof strange.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(That\'s true!)",
            }
        default:
            {
                english="(That\'s true!)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(My adventures with [partner]...)",
            }
        default:
            {
                english="(My adventures with [partner]...)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(and searching for the [CS:P]Hidden Land[CR]...)",
            }
        default:
            {
                english="(and searching for the [CS:P]Hidden Land[CR]...)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(The Relic Fragment was the start of both!)",
            }
        default:
            {
                english="(The Relic Fragment was the start of both!)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(20);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This awesome sunset...",
            }
        case 2:
            {
                english=" This beautiful sunset...",
            }
        default:
            {
                english=" This pretty sunset...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It will be lost if the planet\'s\nparalysis can\'t be stopped.",
            }
        case 2:
            {
                english=" It will be lost if the planet\'s\nparalysis can\'t be stopped.",
            }
        default:
            {
                english=" It will be lost if the planet\'s\nparalysis can\'t be stopped.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We have to prevent that![K]\nWe can\'t waste time finding the [CS:P]Hidden Land[CR].",
            }
        case 2:
            {
                english=" We have to stop that![K] We can\'t\nwaste any time finding the [CS:P]Hidden Land[CR].",
            }
        default:
            {
                english=" We have to stop that![K] We can\'t\nwaste any time finding the [CS:P]Hidden Land[CR].",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWNRIGHT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    Wait(30);
    with (object OBJECT_G01P01A1_93) {
        SetOutputAttribute(2);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(32896, 8, 8);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(10);
    se_Play(8710);
    with (object OBJECT_G01P01A1_93) {
        Destroy();
    }
    Wait(10);
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
                english=" We have to do good tomorrow,\n[hero]!",
            }
        case 2:
            {
                english=" We have to do good tomorrow,\n[hero]!",
            }
        default:
            {
                english=" We have to do good tomorrow,\n[hero]!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(That\'s right. We have to try hard.)",
            }
        default:
            {
                english="(That\'s right. We have to try hard.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(I must fulfill the mission that I had before\nlosing my memory.)",
            }
        default:
            {
                english="(I must fulfill the mission that I had before\nlosing my memory.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(My mission with [CS:N]Grovyle[CR]...)",
            }
        default:
            {
                english="(My mission with [CS:N]Grovyle[CR]...)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(A mission to help the Pokémon of this world\nand those of the future...)",
            }
        default:
            {
                english="(A mission to help the Pokémon of this world\nand those of the future...)",
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
    bgm_FadeOut(120);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Huh? Hey, [hero]...",
            }
        case 2:
            {
                english=" What? Hey, [hero]...",
            }
        default:
            {
                english=" What? Say, [hero]...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That...[K] What is that?",
            }
        case 2:
            {
                english=" That...[K] What is that?",
            }
        default:
            {
                english=" That...[K] What is that?",
            }
    }
    message_Close();
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(30);
    screen2_FadeOut(1, 30);
    back2_SetGround(LEVEL_V22P01A);
    back2_SetBackEffect(2);
    supervision_Acting(1);
    with (object OBJECT_V22P01A1_273) {
        MovePositionMark(32806, Position<'m1', 12, 16.5>);
    }
    camera2_SetPositionMark(Position<'m2', 19, 9.5>);
    screen2_FadeIn(1, 30);
    WaitExecuteObject(OBJECT_V22P01A1_273);
    with (object OBJECT_V22P01A1_273) {
        MovePositionOffset(32806, 100, 0);
    }
    screen2_FadeOut(1, 15);
    back2_SetGround(LEVEL_V22P02A);
    supervision_RemoveActing(1);
    supervision_Acting(2);
    supervision_Acting(3);
    with (object OBJECT_V22P02A1_274) {
        SetAnimation(1);
    }
    with (object OBJECT_V22P02A1_274) {
        MovePositionMark(32870, Position<'m3', 34, 18.5>);
    }
    with (object OBJECT_V22P02A2_278) {
        MovePositionMark(32870, Position<'m4', 34, 18.5>);
    }
    camera2_SetPositionMark(Position<'m5', 25, 9.5>);
    back2_SetBackEffect(2);
    screen2_FadeIn(1, 15);
    WaitExecuteObject(OBJECT_V22P02A1_274);
    with (object OBJECT_V22P02A1_274) {
        MovePositionOffset(32806, 100, 0);
    }
    with (object OBJECT_V22P02A2_278) {
        MovePositionOffset(32806, 100, 0);
    }
    screen2_FadeOut(1, 15);
    back2_SetGround(LEVEL_V22P01A);
    camera2_SetPositionMark(Position<'m6', 19, 9.5>);
    back2_SetBackEffect(2);
    supervision_RemoveActing(2);
    supervision_RemoveActing(3);
    supervision_Acting(1);
    with (object OBJECT_V22P01A1_273) {
        SetPositionMark(Position<'m7', 28, 16.5>);
    }
    with (object OBJECT_V22P01A1_273) {
        MovePositionMark(32793, Position<'m8', 31, 16.5>);
    }
    screen2_FadeIn(1, 15);
    WaitExecuteObject(OBJECT_V22P01A1_273);
    with (object OBJECT_V22P01A1_273) {
        MovePositionOffset(32793, 100, 0);
    }
    screen2_FadeOut(1, 30);
    supervision_RemoveActing(1);
    back2_SetGround(LEVEL_V01P03C);
    camera2_SetPositionMark(Position<'m9', 33, 9.5>);
    screen2_FadeIn(1, 30);
    Wait(30);
    se_Play(8962);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_QUESTION_MARK, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" What could it be...?",
            }
        case 2:
            {
                english=" What could it be...?",
            }
        default:
            {
                english=" What could it be...?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" It seems like it\'s swimming\nacross the sunset...",
            }
        case 2:
            {
                english=" It looks like it\'s swimming\nacross the sunset...",
            }
        default:
            {
                english=" It looks like it\'s swimming\nacross the sunset...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I think it\'s a Pokémon...",
            }
        case 2:
            {
                english=" I think it\'s a Pokémon...",
            }
        default:
            {
                english=" I think it\'s a Pokémon...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Well...[K]that\'s a little strange...",
            }
        case 2:
            {
                english=" Well...[K]that\'s a little strange...",
            }
        default:
            {
                english=" Well...[K]that\'s a little strange...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_LOOK_AROUND_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" The sun\'s almost gone.",
            }
        case 2:
            {
                english=" The sun\'s almost gone.",
            }
        default:
            {
                english=" The sun\'s almost gone.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Let\'s go back to the guild soon.",
            }
        case 2:
            {
                english=" We should go back to the\nguild soon.",
            }
        default:
            {
                english=" We should go back to the\nguild soon.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(15);
    with (actor ACTOR_PLAYER) {
        MovePositionOffset(1, 160, 0);
    }
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(1, 24, 24);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(1, 136, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(90);
    with (performer 0) {
        MovePositionMark(1, Position<'m10', 31.5, 22.5>);
    }
    WaitExecutePerformer(0);
    bgm2_FadeOut(120);
    with (actor ACTOR_NPC_SUKATANKU) {
        MovePositionOffset(1, 32, -32);
    }
    Wait(10);
    with (actor ACTOR_NPC_ZUBATTO) {
        MovePositionOffset(1, 32, -32);
    }
    Wait(15);
    with (actor ACTOR_NPC_DOGAASU) {
        MovePositionOffset(1, 0, -32);
    }
    with (actor ACTOR_NPC_SUKATANKU) {
        MovePositionMark(1, Position<'m11', 35, 22.5>);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        MovePositionMark(1, Position<'m12', 28, 22.5>);
    }
    with (actor ACTOR_NPC_DOGAASU) {
        MovePositionMark(1, Position<'m13', 31.5, 25>);
    }
    with (actor ACTOR_NPC_ZUBATTO) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_NPC_DOGAASU);
    message_SetFace(ACTOR_NPC_SUKATANKU, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEOUTW);
    message_Talk({
        english=" Chaw-haw-haw!",
    });
    message_Talk({
        english=" The [CS:N]Krabby[CR] weren\'t around\nfor a good reason!",
    });
    message_Talk({
        english=" They ran off! Scared of us!\nChaw-haw!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_BOTTOM_C_FACER);
    message_Talk({
        english=" Whoa-ho-ho![K] But, Chief!",
    });
    message_Talk({
        english=" That old-timer [CS:N]Torkoal[CR] wasn\'t\nlying to us, after all.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
    message_Talk({
        english=" Heh-heh![K] That junk we stole\nback then...",
    });
    message_Talk({
        english=" I didn\'t know it was going to\nbe something that valuable.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_SUKATANKU, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEOUTW);
    message_Talk({
        english=" So what? We\'ll get that Relic\nFragment from them one way or another.",
    });
    message_Talk({
        english=" That means the [CS:P]Hidden Land[CR] is\ngoing to be explored by...",
    });
    message_Talk({
        english=" None other than us, Team [CS:X]Skull[CR]!\nChaw-haw-haw!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_DOGAASU, FACE_NORMAL, FACE_POS_BOTTOM_C_FACER);
    message_Talk({
        english=" Whoa-ho-ho!",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_NPC_ZUBATTO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
    message_Talk({
        english=" Heh-heh-heh!",
    });
    message_Close();
    screen2_FadeOut(0, 90);
    screen_FadeOut(1, 90);
    back2_SetMode(0);
    Wait(60);
    end;
}
