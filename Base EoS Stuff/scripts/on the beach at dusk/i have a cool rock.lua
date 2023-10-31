
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
    bgm2_PlayFadeIn(BGM_OCEAN1, 160, 256);
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    Wait(45);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Really, thank you!",
            }
        case 2:
            {
                english=" Thank you! Seriously!",
            }
        default:
            {
                english=" Thank you very much!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_PLAYER, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(............)",
            }
        default:
            {
                english="(............)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(I only helped because I happened to be\nthere... Was that the right thing to do?)",
            }
        default:
            {
                english="(I only helped because I happened to be\nthere... Was that the right thing to do?)",
            }
    }
    message_SetFace(ACTOR_PLAYER, FACE_HAPPY, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(I guess so.[K] This Pokémon is clearly grateful.)",
            }
        default:
            {
                english="(I guess so.[K] This Pokémon is clearly grateful.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(It\'s nice to be appreciated.)",
            }
        default:
            {
                english="(It\'s nice to be appreciated.)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(32896, 12, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(15);
    se_Play(6410);
    supervision_Acting(1);
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(5);
    }
    with (actor ACTOR_ATTENDANT1) {
        SlidePositionOffset(32896, -12, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(2);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Here\'s what they stole.",
            }
        case 2:
            {
                english=" Here\'s what they stole.",
            }
        default:
            {
                english=" Here\'s what they stole.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This is a Relic Fragment.[K]\n...Well, at least, that\'s what I started\ncalling it...",
            }
        case 2:
            {
                english=" This is a Relic Fragment.[K]\n...Well, at least, that\'s what I started\ncalling it...",
            }
        default:
            {
                english=" This is a Relic Fragment.[K]\n...Well, at least, that\'s what I started\ncalling it...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But this Relic Fragment...[K]\nIt\'s my precious treasure.",
            }
        case 2:
            {
                english=" But this Relic Fragment...[K]\nIt\'s my precious treasure.",
            }
        default:
            {
                english=" But this Relic Fragment...[K]\nIt\'s my precious treasure.",
            }
    }
    message_KeyWait();
    bgm_PlayFadeIn(BGM_ON_THE_BEACH_AT_DUSK, 0, 256);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" You see, I\'ve always liked\nlegends and lore...",
            }
        case 2:
            {
                english=" You see, I\'ve always liked\nlegends and lore...",
            }
        default:
            {
                english=" You see, I\'ve always liked\nlegends and lore...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I always get so excited when I\nhear tales from the past!",
            }
        case 2:
            {
                english=" I always get so excited when I\nhear tales from the past!",
            }
        default:
            {
                english=" I always get so excited when I\nhear tales from the past!",
            }
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_KeyWait();
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Don\'t you feel the same way?",
            }
        case 2:
            {
                english=" Don\'t you feel the same way?",
            }
        default:
            {
                english=" Don\'t you feel the same way?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Hidden troves full of treasure\nand strange relics...",
            }
        case 2:
            {
                english=" Hidden troves full of treasure\nand strange relics...",
            }
        default:
            {
                english=" Hidden troves full of treasure\nand strange relics...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(10);
    message_SetFace(ACTOR_ATTENDANT1, FACE_INSPIRED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...uncharted territories veiled\nin darkness...",
            }
        case 2:
            {
                english=" ...uncharted territories veiled\nin darkness...",
            }
        default:
            {
                english=" ...uncharted territories veiled\nin darkness...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ...and new lands just waiting to\nbe discovered!",
            }
        case 2:
            {
                english=" ...and new lands just waiting to\nbe discovered!",
            }
        default:
            {
                english=" ...and new lands just waiting to\nbe discovered!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Such places must be full of gold\nand treasure!",
            }
        case 2:
            {
                english=" Such places must be full of\nunimaginable gold and treasure!",
            }
        default:
            {
                english=" Such places must be full of gold\nand treasure!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" And history! Wouldn\'t it be\namazing to make historic discoveries?",
            }
        case 2:
            {
                english=" And history! Wouldn\'t it be\namazing to make historic discoveries?",
            }
        default:
            {
                english=" And history! Wouldn\'t it be\ndramatic to make historic discoveries?",
            }
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I always dream about that. It\'s\nall exciting to me.",
            }
        case 2:
            {
                english=" That\'s what I always dream of.\nIt\'s all exciting to me.",
            }
        default:
            {
                english=" That\'s what I always dream of.\nIt\'s all so exciting to me.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(20);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" So one day...[K]I happened to find\nsomething... My Relic Fragment.",
            }
        case 2:
            {
                english=" So one day...[K]I happened to come\nacross my Relic Fragment.",
            }
        default:
            {
                english=" And it just so happened...[K]that I\nfound this Relic Fragment.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Sure, it looks like junk, but take\na closer look...",
            }
        case 2:
            {
                english=" I admit that it looks like junk,\nbut take a closer look.",
            }
        default:
            {
                english=" Sure, it does look like junk, but\ntake a closer look.",
            }
    }
    message_Close();
    with (actor ACTOR_ATTENDANT1) {
        MovePositionOffset(32896, 4, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_PLAYER) {
        MovePositionOffset(32896, -4, 0);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    screen2_FadeOut(1, 15);
    back2_SetGround(LEVEL_V01P06B);
    camera2_SetPositionMark(Position<'m1', 21, 15>);
    screen2_FadeIn(1, 15);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" See?[K] See that strange pattern\ninscribed on it?",
            }
        case 2:
            {
                english=" See?[K] That inscription forms a\nstrange pattern, doesn\'t it?",
            }
        default:
            {
                english=" Look there.[K] See that strange\npattern inscribed on it?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(It\'s true. There is a strange inscription.)",
            }
        default:
            {
                english="(It\'s true. There is a strange inscription.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(I\'ve never seen a pattern like this.)",
            }
        default:
            {
                english="(I\'ve never seen a pattern like this.)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This pattern must have some\nmeaning to it. I\'m sure of it.",
            }
        case 2:
            {
                english=" There must be some significance\nto this pattern.",
            }
        default:
            {
                english=" There must be some meaning to\nthis pattern.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This Relic Fragment must be the\nkey to legendary places! To areas where\nprecious treasure lies!",
            }
        case 2:
            {
                english=" This Relic Fragment must be the\nkey to legendary places! To areas where\nprecious treasure lies!",
            }
        default:
            {
                english=" This Relic Fragment must be the\nkey to legendary places! To areas where\nprecious treasure lies!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" At least that\'s the feeling I get.",
            }
        case 2:
            {
                english=" At least that\'s the feeling I get.",
            }
        default:
            {
                english=" At least that\'s the feeling I get.",
            }
    }
    message_Close();
    screen2_FadeOut(1, 15);
    back2_SetGround(LEVEL_V01P03B);
    camera2_SetPositionMark(Position<'m2', 33, 9.5>);
    screen2_FadeIn(1, 15);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That\'s why I want to join an\nexploration team.",
            }
        case 2:
            {
                english=" That\'s why I want to join an\nexploration team.",
            }
        default:
            {
                english=" That\'s why I want to join an\nexploration team.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" This fragment must fit into\nsomething...somewhere! I want to discover\nwhere that is.",
            }
        case 2:
            {
                english=" This fragment must fit into\nsomething...somewhere! I want to discover\nwhere that is.",
            }
        default:
            {
                english=" This fragment must fit into\nsomething...somewhere! I want to discover\nwhere that is.",
            }
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_KeyWait();
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I want to solve the mystery of\nmy Relic Fragment!",
            }
        case 2:
            {
                english=" I want to solve the mystery of\nmy Relic Fragment!",
            }
        default:
            {
                english=" I want to solve the mystery of\nmy Relic Fragment!",
            }
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_KeyWait();
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" So earlier, I tried joining an\nexploration team as an apprentice...",
            }
        case 2:
            {
                english=" So earlier, I tried joining an\nexploration team as an apprentice...",
            }
        default:
            {
                english=" So earlier, I tried joining an\nexploration team as an apprentice...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionTurn(4, 1, 3);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But...[K]I chickened out.",
            }
        case 2:
            {
                english=" But...[K]I chickened out.",
            }
        default:
            {
                english=" But...[K]I was too cowardly...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    Wait(60);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" What about you, [hero]?\nWhat are you going to do now?",
            }
        case 2:
            {
                english=" What about you, [hero]?\nWhat are you going to do now?",
            }
        default:
            {
                english=" What about you, [hero]?\nWhat are you going to do now?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" You lost your memory. And you\nsomehow transformed into a Pokémon...",
            }
        case 2:
            {
                english=" You lost your memory. And you\nsomehow transformed into a Pokémon...",
            }
        default:
            {
                english=" You lost your memory. And you\nsomehow transformed into a Pokémon...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Do you have anywhere to go and\nstay after this?",
            }
        case 2:
            {
                english=" Do you have anywhere to go and\nstay after this?",
            }
        default:
            {
                english=" Do you have anyplace where\nyou can stay?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_PLAYER, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(............)",
            }
        default:
            {
                english="(............)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" If not, can I ask a big favor?",
            }
        case 2:
            {
                english=" If not, can I ask a big favor?",
            }
        default:
            {
                english=" If not, can I ask a big favor?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Would you join me to make an\nexploration team?",
            }
        case 2:
            {
                english=" Would you be willing to form an\nexploration team with me?",
            }
        default:
            {
                english=" Would you form an exploration\nteam with me?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I think you and I would make a\ngood exploration team, [hero].",
            }
        case 2:
            {
                english=" I\'m convinced that I can form an\neffective exploration team with you,\n[hero].",
            }
        default:
            {
                english=" I think we could make a good\nexploration team together, [hero].",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" So, how about it?[K]\nCome on, please?",
            }
        case 2:
            {
                english=" So will you?[K] Please?",
            }
        default:
            {
                english=" So will you do that with me?[K]\nPlease?",
            }
    }
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8972);
    with (actor ACTOR_PLAYER) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_PLAYER) {
        WaitEffect();
    }
    message_SetFace(ACTOR_PLAYER, FACE_SURPRISED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(Whoa! What should I do?[K] I\'m getting\nrecruited out of the blue!)",
            }
        default:
            {
                english="(Wah! What should I do?[K] I\'m getting\nrecruited out of the blue!)",
            }
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_KeyWait();
    message_SetFace(ACTOR_PLAYER, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(I don\'t know what an exploration team is...)",
            }
        default:
            {
                english="(I don\'t know what an exploration team is...)",
            }
    }
    message_SetActor(ACTOR_PLAYER);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(What should I do?[K] Should I join this Pokémon\nand form an exploration team?)",
            }
        default:
            {
                english="(What should I do?[K] Should I join this Pokémon\nand form an exploration team?)",
            }
    }
    §label_3;
    forever {
        switch ( message_SwitchMenu(0, 1) ) {
            case menu({
                english="Form a team",
            }):
                break_loop;
                break;
            case menu({
                english="Say no",
            }):
            default:
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                se_Play(8968);
                with (actor ACTOR_ATTENDANT1) {
                    ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
                }
                message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Huh? Oh, come on!",
                        }
                    case 2:
                        {
                            english=" What?! Oh, but...",
                        }
                    default:
                        {
                            english=" What?! Oh, please!",
                        }
                }
                WaitExecuteLives(ACTOR_ATTENDANT1);
                message_KeyWait();
                message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" But I\'m braver when I\'m with\nyou, [hero]...",
                        }
                    case 2:
                        {
                            english=" But I\'m braver when I\'m with\nyou, [hero]...",
                        }
                    default:
                        {
                            english=" But I\'m braver when I\'m with\nyou, [hero]...",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" And you were awesome when we\nbeat [CS:N]Koffing[CR] and his buddy.",
                        }
                    case 2:
                        {
                            english=" You were so fantastic when\nwe confronted [CS:N]Koffing[CR] and his sidekick.",
                        }
                    default:
                        {
                            english=" And you were fantastic when\nwe faced [CS:N]Koffing[CR] and his sidekick.",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" When I saw that, I realized\nyou\'re no ordinary Pokémon, [hero]!",
                        }
                    case 2:
                        {
                            english=" When I saw that, I realized\nyou\'re no ordinary Pokémon, [hero]!",
                        }
                    default:
                        {
                            english=" When I saw that, I realized\nyou\'re no ordinary Pokémon, [hero]!",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" I thought that you\'d make a\nfirst-class explorer, [hero].",
                        }
                    case 2:
                        {
                            english=" I became convinced that you\'d\nmake a first-class explorer, [hero].",
                        }
                    default:
                        {
                            english=" I thought that you could be a\nfirst-class explorer, [hero].",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" So come on, I\'m begging you.[K]\nLet\'s form an exploration team, you and me.",
                        }
                    case 2:
                        {
                            english=" So come on now.[K] Let\'s form an\nexploration team together.",
                        }
                    default:
                        {
                            english=" So, please?[K] Will you please form\nan exploration team with me?",
                        }
                }
                continue;  // may be redundant
            case menu({
                english="Are you...?",
            }):
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
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
                            english=" Huh? [K]Am I what?",
                        }
                    case 2:
                        {
                            english=" Huh? [K]Am I what?",
                        }
                    default:
                        {
                            english=" Huh? [K]Am I what?",
                        }
                }
                message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" What do you mean, [K]\"Are you...?\"",
                        }
                    case 2:
                        {
                            english=" What do you mean, [K]\"Are you...?\"",
                        }
                    default:
                        {
                            english=" What do you mean, [K]\"Are you...?\"",
                        }
                }
                switch ( message_SwitchMenu(0, 1) ) {
                    case menu({
                        english="You\'re trying to talk me into it?",
                    }):
                    default:
                        break;
                }
                §label_4;
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                se_Play(8968);
                with (actor ACTOR_ATTENDANT1) {
                    ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
                }
                message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" What?! [K]Talk you into it?!",
                        }
                    case 2:
                        {
                            english=" What?! [K]Talk you into it?!",
                        }
                    default:
                        {
                            english=" What?! [K]Talk you into it?!",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" I wasn\'t trying to do anything!",
                        }
                    case 2:
                        {
                            english=" I didn\'t even think of it!",
                        }
                    default:
                        {
                            english=" The thought never crossed\nmy mind!",
                        }
                }
                message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Well, I\'m a complete coward...[K]\nHonestly...\n",
                        }
                    case 2:
                        {
                            english=" Well, I\'m a complete coward...[K]\nHonestly...\n",
                        }
                    default:
                        {
                            english=" Well, I\'m a complete coward...[K]\nHonestly...\n",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" I mean, yes, I thought I could\ndepend on you, [hero]...",
                        }
                    case 2:
                        {
                            english=" I mean, yes, I thought I could\ndepend on you, [hero]...",
                        }
                    default:
                        {
                            english=" I mean, yes, I thought I could\ndepend on you, [hero]...",
                        }
                }
                message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" But during that fight with\n[CS:N]Koffing[CR] earlier...",
                        }
                    case 2:
                        {
                            english=" But during that fight with\n[CS:N]Koffing[CR] earlier...",
                        }
                    default:
                        {
                            english=" But during that fight with\n[CS:N]Koffing[CR] earlier...",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Having you there with me, I felt\nreally brave.",
                        }
                    case 2:
                        {
                            english=" Having you there with me, I felt\nreally brave.",
                        }
                    default:
                        {
                            english=" Having you there with me, I felt\nreally brave.",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" I think I could do anything as\nlong as you\'re helping me, [hero].",
                        }
                    case 2:
                        {
                            english=" I think I could do anything as\nlong as you\'re helping me, [hero].",
                        }
                    default:
                        {
                            english=" I think I could do anything as\nlong as you\'re helping me, [hero].",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" So come on, I\'m begging you.[K]\nLet\'s form an exploration team, you and me.",
                        }
                    case 2:
                        {
                            english=" So come on, I\'m begging you.[K]\nLet\'s form an exploration team, you and me.",
                        }
                    default:
                        {
                            english=" So come on, I\'m begging you.[K]\nLet\'s form an exploration team, you and me.",
                        }
                }
                continue;  // may be redundant
        }
    }
    §label_0;
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    message_SetFace(ACTOR_PLAYER, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(It\'s true, I do have nowhere to go...)",
            }
        default:
            {
                english="(It\'s true, I do have nowhere to go...)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(I don\'t have any clue what I should do next.)",
            }
        default:
            {
                english="(I don\'t have any clue what I should do next.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(I guess it wouldn\'t hurt to team up with\n[partner] for now.)",
            }
        default:
            {
                english="(I guess it wouldn\'t hurt to team up with\n[partner] for now.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(Maybe I\'ll eventually discover who or what\nI am by hanging out with this Pokémon.)",
            }
        default:
            {
                english="(Maybe I\'ll eventually discover who or what\nI am by hanging out with this Pokémon.)",
            }
    }
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(OK! That\'s settled!)",
            }
        default:
            {
                english="(OK! That\'s settled!)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        ExecuteCommon(CORO_EXPLANATION_FUNC_SERIES, 0);
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
    message_SetFace(ACTOR_ATTENDANT1, FACE_INSPIRED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Yeah?[K] Really?!",
            }
        case 2:
            {
                english=" Yes?[K] Really?!",
            }
        default:
            {
                english=" Oh?[K] Really?!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" You\'ll form an exploration team\nwith me?",
            }
        case 2:
            {
                english=" You\'ll form an exploration team\nwith me?",
            }
        default:
            {
                english=" You\'ll really form an exploration\nteam with me?",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_ANGRY_FUNC_SERIES, 0);
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_JOYOUS, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Yahoo! Thanks!",
            }
        case 2:
            {
                english=" Yes! Thank you!",
            }
        default:
            {
                english=" Yay! Thank you!",
            }
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_KeyWait();
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We\'re going to make a great\ncombination! Let\'s make this work!",
            }
        case 2:
            {
                english=" We\'re going to be a great\ncombination! Let\'s make this work!",
            }
        default:
            {
                english=" We\'re going to be a great\ncombination! Let\'s make this work!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UPRIGHT);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(15);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" First, let\'s go to [CS:N]Wigglytuff[CR]\'s\nplace and sign up as apprentices.",
            }
        case 2:
            {
                english=" First, we should go to\n[CS:N]Wigglytuff[CR]\'s place and sign up as apprentices.",
            }
        default:
            {
                english=" First, we need to go to\n[CS:N]Wigglytuff[CR]\'s place and sign up as apprentices.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" That\'s where we can train to\nbecome a proper exploration team.",
            }
        case 2:
            {
                english=" That\'s where we need to train to\nbecome a first-rate exploration team.",
            }
        default:
            {
                english=" That\'s where we can get the\ntraining to become a proper exploration team.",
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
                english=" I think the training will be\nreally tough...",
            }
        case 2:
            {
                english=" I\'m sure the training will be\nvery tough...",
            }
        default:
            {
                english=" I think the training will be very\ntough...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But let\'s give it our best,\n[hero]!",
            }
        case 2:
            {
                english=" But let\'s give it our best,\n[hero]!",
            }
        default:
            {
                english=" So let\'s give it our best,\n[hero]!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_DOWN);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_DOWN);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(20);
    with (actor ACTOR_PLAYER) {
        SetAnimation(66);
    }
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(66);
    }
    with (actor ACTOR_PLAYER) {
        WaitAnimation();
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitAnimation();
    }
    Wait(80);
    bgm_FadeOut(180);
    screen2_FadeOut(0, 90);
    screen_FadeOut(1, 90);
    back2_SetMode(0);
    bgm2_FadeOut(180);
    Wait(100);
    message_Narration(30, {
        english="[CN]And so...",
    });
    message_Narration(30, {
        english="[CN][partner] and [hero]...",
    });
    message_Narration(30, {
        english="[CN]formed an exploration team.",
    });
    message_Narration(30, {
        english="[CN]This turned out to be...",
    });
    message_Narration(30, {
        english="[CN]their very first step into...",
    });
    message_Narration(30, {
        english="[CN]many fantastic realms of adventure\n[CN]that awaited their arrival.",
    });
    message_Close();
    Wait(60);
    switch ( message_Menu(MENU_DUNGEON_TEAM_RETURNS_FROM_MAP) ) { }
    end;
}
