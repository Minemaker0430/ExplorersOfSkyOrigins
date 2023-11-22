
def 0 {
    sound_Stop();
    back_SetGround(LEVEL_D01P11A);
    supervision_Acting(0);
    with (performer 0) {
        camera_SetMyself();
    }
    bgm2_PlayFadeIn(BGM_OCEAN1, 0, 256);
    screen_FadeIn(1, 60);
    Wait(30);
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m0', 61, 24.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m1', 67, 24.5>);
    }
    with (actor ACTOR_PLAYER) {
        MovePositionMark(1, Position<'m2', 64, 21.5>);
    }
    with (actor ACTOR_ATTENDANT1) {
        MovePositionMark(1, Position<'m3', 58, 21.5>);
    }
    with (actor ACTOR_PLAYER) {
        Turn2Direction(4, 10, DIR_UP);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(4, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    Wait(30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Well, we just happen to be here\nat the beach, so...",
            }
        case 2:
            {
                english=" Well, we just happen to be here\nat the beach, so...",
            }
        default:
            {
                english=" Well, we just happen to be here\nat the beach, so...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ..................",
            }
        case 2:
            {
                english=" ..................",
            }
        default:
            {
                english=" ..................",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8961);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_SWEAT_DROP, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Hmm... I\'m clueless.",
            }
        case 2:
            {
                english=" Hmm... This is hopeless.",
            }
        default:
            {
                english=" Hmm... This isn\'t working.",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" A way of crossing the sea...\nI\'m not coming up with anything.",
            }
        case 2:
            {
                english=" A way of crossing the sea...\nI\'m not coming up with anything.",
            }
        default:
            {
                english=" A way of crossing the sea...\nI\'m not coming up with anything.",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" ..................",
            }
        case 2:
            {
                english=" ..................",
            }
        default:
            {
                english=" ..................",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" I said we\'d search for the\n[CS:P]Hidden Land[CR], but...",
            }
        case 2:
            {
                english=" I agreed to search for the\n[CS:P]Hidden Land[CR], but...",
            }
        default:
            {
                english=" I said we\'d search for the\n[CS:P]Hidden Land[CR], but...",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_ATTENDANT1) {
        Turn2Direction(8, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Where are we supposed to even\nbegin looking?",
            }
        case 2:
            {
                english=" Where do you suppose we should\nstart looking?",
            }
        default:
            {
                english=" Where would we even begin\nlooking?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We have to hurry too. Ugh!",
            }
        case 2:
            {
                english=" And there\'s no time! Ugh!",
            }
        default:
            {
                english=" We have to hurry too. Ugh!",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        Turn2Direction(8, 10, DIR_UP);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(It\'s true. We\'ve got too little information\nto go on.)",
            }
        default:
            {
                english="(It\'s true. We\'ve got too little information\nto go on.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(And we have no time to waste.)",
            }
        default:
            {
                english="(And we have no time to waste.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(We have to locate the [CS:P]Hidden Land[CR] as soon as\npossible.)",
            }
        default:
            {
                english="(We have to locate the [CS:P]Hidden Land[CR] as soon as\npossible.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(We have to find [CS:P]Temporal Tower[CR], then put\nthe Time Gears inside it...)",
            }
        default:
            {
                english="(We have to find [CS:P]Temporal Tower[CR], then put\nthe Time Gears inside it...)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(If we fail to do that, our planet will become\nparalyzed.)",
            }
        default:
            {
                english="(If we fail to do that, our planet will become\nparalyzed.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(We have to stop that, whatever it takes.)",
            }
        default:
            {
                english="(We have to stop that, whatever it takes.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(And to do that, well...[K]we have no choice!)",
            }
        default:
            {
                english="(And to do that, well...[K]we have no choice!)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(We need everyone\'s help.)",
            }
        default:
            {
                english="(We need everyone\'s help.)",
            }
    }
    message_SwitchMonologue ($HERO_TALK_KIND) {
        case 4:
            {
                english="(That\'s it.[K] I\'ll tell [partner].)",
            }
        default:
            {
                english="(That\'s it.[K] I\'ll tell [partner].)",
            }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER) {
        Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
    }
    WaitExecuteLives(ACTOR_PLAYER);
    Wait(15);
    with (actor ACTOR_ATTENDANT1) {
        SetEffect(EFFECT_TWO_ARROWS_AT_SIDE_LEFT, 3);
    }
    with (actor ACTOR_ATTENDANT1) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionLives(4, 10, ACTOR_PLAYER);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
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
                english=" Hm? What\'s up, [hero]?",
            }
        case 2:
            {
                english=" Hm? What is it, [hero]?",
            }
        default:
            {
                english=" Hm? What is it, [hero]?",
            }
    }
    §label_2;
    forever {
        switch ( message_SwitchMenu(0, 1) ) {
            case menu({
                english="Let\'s go to Treasure Town!",
            }):
            default:
                §label_0;
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                se_Play(8974);
                with (actor ACTOR_ATTENDANT1) {
                    ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
                }
                WaitExecuteLives(ACTOR_ATTENDANT1);
                message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Huh?! You want to go to\nTreasure Town?!",
                        }
                    case 2:
                        {
                            english=" What?! You want to go to\nTreasure Town?!",
                        }
                    default:
                        {
                            english=" Pardon?! You want to go to\nTreasure Town?!",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Wh-why?!",
                        }
                    case 2:
                        {
                            english=" Wh-why?!",
                        }
                    default:
                        {
                            english=" Wh-why?!",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" We vanished in front of\neveryone, remember?",
                        }
                    case 2:
                        {
                            english=" We disappeared in front of\neveryone, remember?",
                        }
                    default:
                        {
                            english=" We vanished in front of\neveryone, remember?",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" I think if we suddenly showed\nup, everyone\'d be shocked!",
                        }
                    case 2:
                        {
                            english=" I think if we suddenly showed\nup, everyone would be shocked!",
                        }
                    default:
                        {
                            english=" I think if we suddenly showed\nup, everyone would be shocked!",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" But why Treasure Town?[K]\nWhat are we going to do there?",
                        }
                    case 2:
                        {
                            english=" But why do you want to go to\nTreasure Town?[K] What are we going to\ndo there?",
                        }
                    default:
                        {
                            english=" But why Treasure Town?[K]\nWhat are we going to do there?",
                        }
                }
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                se_Play(8961);
                with (actor ACTOR_PLAYER) {
                    SetEffect(EFFECT_SWEAT_DROP, 3);
                }
                with (actor ACTOR_PLAYER) {
                    WaitEffect();
                }
                WaitExecuteLives(ACTOR_PLAYER);
                message_SetFace(ACTOR_PLAYER, FACE_WORRIED, FACE_POS_BOTTOM_R_FACEINW);
                message_SwitchMonologue ($HERO_TALK_KIND) {
                    case 4:
                        {
                            english="(Th-that\'s true.)",
                        }
                    default:
                        {
                            english="(Th-that\'s true.)",
                        }
                }
                message_SwitchMonologue ($HERO_TALK_KIND) {
                    case 4:
                        {
                            english="(Come to think of it, there isn\'t much point in\ngoing to Treasure Town.)",
                        }
                    default:
                        {
                            english="(Come to think of it, there isn\'t much point in\ngoing to Treasure Town.)",
                        }
                }
                message_SwitchMonologue ($HERO_TALK_KIND) {
                    case 4:
                        {
                            english="(What would we possibly do there?)",
                        }
                    default:
                        {
                            english="(What would we possibly do there?)",
                        }
                }
                message_SwitchMonologue ($HERO_TALK_KIND) {
                    case 4:
                        {
                            english="(I flubbed it.[K] I guess that\'s not what I meant.)",
                        }
                    default:
                        {
                            english="(I flubbed it.[K] I guess that\'s not what I meant.)",
                        }
                }
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                with (actor ACTOR_PLAYER) {
                    ExecuteCommon(CORO_EXPLANATION_FUNC_SERIES, 0);
                }
                WaitExecuteLives(ACTOR_PLAYER);
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
                            english=" Huh? That was a mistake?",
                        }
                    case 2:
                        {
                            english=" What? That was a mistake?",
                        }
                    default:
                        {
                            english=" Pardon? That was a mistake?",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" All right. Then where were you\ngoing to suggest?",
                        }
                    case 2:
                        {
                            english=" OK. Then where were you going\nto suggest?",
                        }
                    default:
                        {
                            english=" OK. Then where were you going\nto suggest?",
                        }
                }
                continue;  // may be redundant
            case menu({
                english="Let\'s go to [CS:N]Wigglytuff[CR]\'s Guild!",
            }):
                break_loop;
                break;
        }
    }
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    se_Play(8974);
    with (actor ACTOR_ATTENDANT1) {
        ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
    }
    WaitExecuteLives(ACTOR_ATTENDANT1);
    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Huh?! You want to go to\n[CS:N]Wigglytuff[CR]\'s Guild?!",
            }
        case 2:
            {
                english=" What?! You want to go to\n[CS:N]Wigglytuff[CR]\'s Guild?!",
            }
        default:
            {
                english=" Pardon?! You want to go to\n[CS:N]Wigglytuff[CR]\'s Guild?!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Wh-why?!",
            }
        case 2:
            {
                english=" Wh-why?!",
            }
        default:
            {
                english=" Wh-why?!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" We vanished in front of\neveryone, remember?",
            }
        case 2:
            {
                english=" We disappeared in front of\neveryone, remember?",
            }
        default:
            {
                english=" We vanished in front of\neveryone, remember?",
            }
    }
    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_STANDARD);
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Well, sure, I bet everyone\'s\nreally worried about us...",
            }
        case 2:
            {
                english=" Well, yes, I think everyone\nwould be really worried about us...",
            }
        default:
            {
                english=" Well, sure, I think everyone\nwould be really worried about us...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" And I miss seeing everyone\ntoo...",
            }
        case 2:
            {
                english=" And I miss everyone too...",
            }
        default:
            {
                english=" And I miss everyone too...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" But everything we saw in\nthe future...",
            }
        case 2:
            {
                english=" But everything we saw in\nthe future...",
            }
        default:
            {
                english=" But everything we saw in\nthe future...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" everything about [CS:N]Grovyle[CR]...[K]\nand about [CS:N]Dusknoir[CR]...",
            }
        case 2:
            {
                english=" everything about [CS:N]Grovyle[CR]...[K]\nand about [CS:N]Dusknoir[CR]...",
            }
        default:
            {
                english=" everything about [CS:N]Grovyle[CR]...[K]\nand about [CS:N]Dusknoir[CR]...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" and even about your past,\n[hero]... If we tell it all to the guild...",
            }
        case 2:
            {
                english=" and even about your past,\n[hero]... If we tell it all to the guild...",
            }
        default:
            {
                english=" and even about your past,\n[hero]... If we tell it all to the guild...",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" How can they believe us?!",
            }
        case 2:
            {
                english=" How can they believe us?!",
            }
        default:
            {
                english=" How can they believe us?!",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" What do you think,\n[hero]?",
            }
        case 2:
            {
                english=" What do you think,\n[hero]?",
            }
        default:
            {
                english=" What do you think,\n[hero]?",
            }
    }
    message_SwitchTalk ($PARTNER_TALK_KIND) {
        case 1:
            {
                english=" Do you think everyone at the\nguild will believe us?",
            }
        case 2:
            {
                english=" Do you think everyone at the\nguild will believe us?",
            }
        default:
            {
                english=" Do you think everyone at the\nguild will believe us?",
            }
    }
    switch ( message_SwitchMenu(0, 1) ) {
        case menu({
            english="They\'ll believe!",
        }):
        default:
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_STANDARD);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" So you think they\'ll believe us!",
                    }
                case 2:
                    {
                        english=" You think they\'ll believe us!",
                    }
                default:
                    {
                        english=" You think they\'ll believe us!",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Well...[K] You say that,\n[hero], but...",
                    }
                case 2:
                    {
                        english=" Well...[K] You say that,\n[hero], but...",
                    }
                default:
                    {
                        english=" Well...[K] You say that,\n[hero], but...",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Is there a chance they\'ll\nbelieve us?",
                    }
                case 2:
                    {
                        english=" Is there a chance they\'ll\nbelieve us?",
                    }
                default:
                    {
                        english=" Is there a chance they\'ll\nbelieve us?",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" I mean, everyone in this world\nis convinced that [CS:N]Grovyle[CR] is the villain.",
                    }
                case 2:
                    {
                        english=" After all, everyone in this world\nis convinced that [CS:N]Grovyle[CR] is the villain.",
                    }
                default:
                    {
                        english=" I mean, everyone in this world\nis convinced that [CS:N]Grovyle[CR] is the villain.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" And they think [CS:N]Dusknoir[CR] is a\nreally good Pokémon, right?",
                    }
                case 2:
                    {
                        english=" And they think [CS:N]Dusknoir[CR] is a\nreally good Pokémon, don\'t they?",
                    }
                default:
                    {
                        english=" And they think [CS:N]Dusknoir[CR] is a\nreally good Pokémon, right?",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Everyone especially thinks highly\nof [CS:N]Dusknoir[CR].",
                    }
                case 2:
                    {
                        english=" Everyone especially thinks highly\nof [CS:N]Dusknoir[CR].",
                    }
                default:
                    {
                        english=" Everyone especially respects\n[CS:N]Dusknoir[CR].",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" I saw the future...[K] But I still\ndidn\'t want to believe the truth about [CS:N]Dusknoir[CR].",
                    }
                case 2:
                    {
                        english=" I saw the future...[K] But I still\ndidn\'t want to believe the truth about [CS:N]Dusknoir[CR].",
                    }
                default:
                    {
                        english=" I saw the future...[K] But I still\ndidn\'t want to believe the truth about [CS:N]Dusknoir[CR].",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" If we tell everyone the truth,\nI wonder if they\'d be able to accept it.",
                    }
                case 2:
                    {
                        english=" Even if we were to tell\neveryone the truth, I wonder if they would be\nable to accept it.",
                    }
                default:
                    {
                        english=" If we tell everyone the truth,\nI wonder if they would be able to accept it.",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            §label_5;
            message_SetFace(ACTOR_PLAYER, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(..................)",
                    }
                default:
                    {
                        english="(..................)",
                    }
            }
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(It\'s true.)",
                    }
                default:
                    {
                        english="(It\'s true.)",
                    }
            }
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(What [partner] is saying is true.)",
                    }
                default:
                    {
                        english="(What [partner] is saying is true.)",
                    }
            }
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(Maybe no one will believe us if we tell them\nthe truth.)",
                    }
                default:
                    {
                        english="(Maybe no one will believe us if we tell them\nthe truth.)",
                    }
            }
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="(But...!)",
                    }
                default:
                    {
                        english="(But...!)",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_PLAYER) {
                ExecuteCommon(CORO_EXPLANATION_FUNC_SERIES, 0);
            }
            WaitExecuteLives(ACTOR_PLAYER);
            se_Play(8968);
            with (actor ACTOR_ATTENDANT1) {
                SetEffect(EFFECT_SHOCKED_MIRRORED, 3);
            }
            with (actor ACTOR_ATTENDANT1) {
                WaitEffect();
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" ...Huh?! But we should tell them\nanyway?",
                    }
                case 2:
                    {
                        english=" ...What?! We should tell them\nanyway?",
                    }
                default:
                    {
                        english=" ...Pardon?! We should tell them\nanyway?",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Wh-why?!",
                    }
                case 2:
                    {
                        english=" Wh-why?!",
                    }
                default:
                    {
                        english=" Wh-why?!",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" They might not believe us,\nright?",
                    }
                case 2:
                    {
                        english=" They might not believe us,\nright?",
                    }
                default:
                    {
                        english=" They might not believe us,\nright?",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" But we should tell them anyway?",
                    }
                case 2:
                    {
                        english=" But we should tell them anyway?",
                    }
                default:
                    {
                        english=" But we should tell them anyway?",
                    }
            }
            switch ( message_SwitchMenu(0, 1) ) {
                case menu({
                    english="Yes! Tell them!",
                }):
                default:
                    break;
            }
            §label_6;
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            se_Play(8972);
            with (actor ACTOR_ATTENDANT1) {
                SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
            }
            with (actor ACTOR_ATTENDANT1) {
                WaitEffect();
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Wh-why?!",
                    }
                case 2:
                    {
                        english=" Wh-why?!",
                    }
                default:
                    {
                        english=" Wh-why?!",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" What makes you think that way,\n[hero]?",
                    }
                case 2:
                    {
                        english=" Why do you think so,\n[hero]?",
                    }
                default:
                    {
                        english=" Why do you think so,\n[hero]?",
                    }
            }
            switch ( message_SwitchMenu(0, 1) ) {
                case menu({
                    english="We need everyone\'s help!",
                }):
                default:
                    break;
            }
            §label_7;
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            bgm_PlayFadeIn(BGM_ON_THE_BEACH_AT_DUSK, 0, 256);
            message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Everyone\'s help...",
                    }
                case 2:
                    {
                        english=" Everyone\'s help...",
                    }
                default:
                    {
                        english=" Everyone\'s help...",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" ...[K]I get it.[K] We can\'t find the\n[CS:P]Hidden Land[CR] on our own.",
                    }
                case 2:
                    {
                        english=" ...[K]I understand.[K] We can\'t find the\n[CS:P]Hidden Land[CR] on our own.",
                    }
                default:
                    {
                        english=" ...[K]I get it.[K] There\'s no way we\ncan find the [CS:P]Hidden Land[CR] on our own.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" We do need everyone\'s help.",
                    }
                case 2:
                    {
                        english=" We do need everyone\'s help.",
                    }
                default:
                    {
                        english=" We do need everyone\'s help.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" If we don\'t get their help...[K]\nWe\'ll never be able to prevent the planet\'s\nparalysis.",
                    }
                case 2:
                    {
                        english=" If we don\'t get their help...[K]\nWe\'ll run out of time to prevent the planet\'s\nparalysis.",
                    }
                default:
                    {
                        english=" If we don\'t get their help...[K]\nWe\'ll run out of time to prevent the planet\'s\nparalysis.",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                Turn2Direction(4, 10, DIR_UP);
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" ..................",
                    }
                case 2:
                    {
                        english=" ..................",
                    }
                default:
                    {
                        english=" ..................",
                    }
            }
            Wait(60);
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_PLAYER);
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            Wait(15);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" [hero]...",
                    }
                case 2:
                    {
                        english=" [hero]...",
                    }
                default:
                    {
                        english=" [hero]...",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" All right![K] Let\'s go home to\n[CS:N]Wigglytuff[CR]\'s Guild!",
                    }
                case 2:
                    {
                        english=" OK, you\'re right![K] Let\'s go home\nto [CS:N]Wigglytuff[CR]\'s Guild!",
                    }
                default:
                    {
                        english=" OK, you\'re right![K] Let\'s go home\nto [CS:N]Wigglytuff[CR]\'s Guild!",
                    }
            }
            with (actor ACTOR_ATTENDANT1) {
                ExecuteCommon(CORO_JUMP_HAPPY_FUNC_SERIES, 0);
            }
            WaitExecuteLives(ACTOR_ATTENDANT1);
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_PLAYER, FACE_INSPIRED, FACE_POS_BOTTOM_R_FACEINW);
            message_SwitchMonologue ($HERO_TALK_KIND) {
                case 4:
                    {
                        english="([partner]!)",
                    }
                default:
                    {
                        english="([partner]!)",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" We\'ll go back to the guild and\ntell everyone the truth!",
                    }
                case 2:
                    {
                        english=" Let\'s go back to the guild and\ntell everyone the truth!",
                    }
                default:
                    {
                        english=" Let\'s go back to the guild and\ntell everyone the truth!",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" I\'m pretty certain everyone will\nbe shocked.",
                    }
                case 2:
                    {
                        english=" I\'m sure that everyone will be\nshocked.",
                    }
                default:
                    {
                        english=" I can imagine that everyone will\nbe shocked.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" But...[K] I\'m also sure they\'ll\nunderstand!",
                    }
                case 2:
                    {
                        english=" But...[K] I\'m certain they\'ll\nunderstand!",
                    }
                default:
                    {
                        english=" But...[K] I\'m sure they will\nunderstand!",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Let\'s go home, [hero]!",
                    }
                case 2:
                    {
                        english=" Let\'s go home, [hero]!",
                    }
                default:
                    {
                        english=" Let\'s go home, [hero]!",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Back to [CS:N]Wigglytuff[CR]\'s Guild!",
                    }
                case 2:
                    {
                        english=" Back to [CS:N]Wigglytuff[CR]\'s Guild!",
                    }
                default:
                    {
                        english=" Back to [CS:N]Wigglytuff[CR]\'s Guild!",
                    }
            }
            message_Close();
            with (actor ACTOR_PLAYER) {
                SetAnimation(71);
            }
            with (actor ACTOR_PLAYER) {
                WaitAnimation();
            }
            WaitExecuteLives(ACTOR_PLAYER);
            with (actor ACTOR_PLAYER) {
                SetAnimation(71);
            }
            with (actor ACTOR_PLAYER) {
                WaitAnimation();
            }
            WaitExecuteLives(ACTOR_PLAYER);
            with (actor ACTOR_PLAYER) {
                SetAnimation(2);
            }
            Wait(45);
            with (actor ACTOR_PLAYER) {
                MovePositionMark(1, Position<'m4', 67, 24.5>);
            }
            with (actor ACTOR_ATTENDANT1) {
                MovePositionOffset(1, 40, 0);
            }
            with (actor ACTOR_PLAYER) {
                MovePositionOffset(1, 160, 0);
            }
            with (actor ACTOR_ATTENDANT1) {
                MovePositionMark(1, Position<'m5', 67, 24.5>);
            }
            with (actor ACTOR_ATTENDANT1) {
                MovePositionOffset(1, 160, 0);
            }
            bgm2_FadeOut(120);
            bgm_FadeOut(120);
            screen_FadeOut(1, 60);
            Wait(90);
            $SCENARIO_MAIN = scn[22, 0];
            CallCommon(CORO_HANYOU_SAVE_FUNC);
            end;
        case menu({
            english="I don\'t know...",
        }):
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" ...You\'re right.[K] We can tell\neveryone about what we went through.",
                    }
                case 2:
                    {
                        english=" ...You\'re right.[K] We can tell\neveryone about what we experienced.",
                    }
                default:
                    {
                        english=" ...You\'re right.[K] We can tell\neveryone about what we went through.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" But there\'s no telling if they\'d\nbelieve us or not.",
                    }
                case 2:
                    {
                        english=" But there\'s no telling if they\nwould believe us or not.",
                    }
                default:
                    {
                        english=" But there\'s no telling if they\nwould believe us or not.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" I mean, everyone in this world\nis convinced that [CS:N]Grovyle[CR] is the villain.",
                    }
                case 2:
                    {
                        english=" After all, everyone in this world\nis convinced that [CS:N]Grovyle[CR] is the villain.",
                    }
                default:
                    {
                        english=" I mean, everyone in this world\nis convinced that [CS:N]Grovyle[CR] is the villain.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" And they think [CS:N]Dusknoir[CR] is a\nreally good Pokémon.",
                    }
                case 2:
                    {
                        english=" And they think [CS:N]Dusknoir[CR] is a\nreally good Pokémon.",
                    }
                default:
                    {
                        english=" And they think [CS:N]Dusknoir[CR] is a\nreally good Pokémon.",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Everyone especially thinks highly\nof [CS:N]Dusknoir[CR].",
                    }
                case 2:
                    {
                        english=" Everyone especially thinks highly\nof [CS:N]Dusknoir[CR].",
                    }
                default:
                    {
                        english=" Everyone especially respects\n[CS:N]Dusknoir[CR].",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" I saw the future...[K] But I still\ndidn\'t want to believe the truth about [CS:N]Dusknoir[CR].",
                    }
                case 2:
                    {
                        english=" I saw the future...[K] But I still\ndidn\'t want to believe the truth about [CS:N]Dusknoir[CR].",
                    }
                default:
                    {
                        english=" I saw the future...[K] But I still\ndidn\'t want to believe the truth about [CS:N]Dusknoir[CR].",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" If we tell everyone the truth,\nI wonder if they\'d be able to accept it.",
                    }
                case 2:
                    {
                        english=" Even if we were to tell\neveryone the truth, I wonder if they would be\nable to accept it.",
                    }
                default:
                    {
                        english=" If we tell everyone the truth,\nI wonder if they would be able to accept it.",
                    }
            }
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            jump @label_5;
    }
}
