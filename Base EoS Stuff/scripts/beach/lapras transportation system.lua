
def 0 {
    if ( scn($SCENARIO_MAIN) >= [29, 94] ) {
        §label_0;
        if ( $SCENARIO_TALK_BIT_FLAG[47] ) {
            §label_75;
            switch ( $GROUND_ENTER ) {
                case 59:
                    CallCommon(CORO_SUBSCREEN_INIT);
                    with (actor ACTOR_TALK_MAIN) {
                        ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
                    }
                    with (actor ACTOR_TALK_SUB) {
                        ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
                    }
                    with (actor ACTOR_ATTENDANT1) {
                        SetAnimation(2);
                    }
                    with (actor ACTOR_ATTENDANT1) {
                        Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
                    }
                    if ( scn($SCENARIO_MAIN) < [26, 0] || $SCENARIO_TALK_BIT_FLAG[43] ) {
                        message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                        message_Talk({
                            english=" Would you like to return to\nTreasure Town now?",
                        });
                        switch ( message_SwitchMenu(0, 1) ) {
                            case menu({
                                english="Yes",
                            }):
                                §label_136;
                                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                                message_Talk({
                                    english=" I see.",
                                });
                                message_Talk({
                                    english=" Off we go to Treasure Town!",
                                });
                                message_Close();
                                bgm_FadeOut(60);
                                main_EnterGround(LEVEL_D01P11A, 30);
                                hold;
                            case menu({
                                english="No",
                            }):
                            default:
                                §label_135;
                                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                                message_Talk({
                                    english=" I see.",
                                });
                                message_Talk({
                                    english=" Then good luck reaching\n[CS:P]Temporal Tower[CR]!",
                                });
                                message_Close();
                                §label_130;
                                CallCommon(CORO_EVENT_END_FREE);
                                end;
                        }
                    } else {
                        message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                        message_Talk({
                            english=" Would you like to return to\nTreasure Town now?",
                        });
                        switch ( message_SwitchMenu(0, 1) ) {
                            case menu({
                                english="Yes",
                            }):
                            default:
                                $SCENARIO_TALK_BIT_FLAG[43] = 1;
                                message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                                message_Talk({
                                    english=" Oh?[K] I don\'t seem to see [CS:N]Grovyle[CR]\nanywhere...",
                                });
                                message_Talk({
                                    english=" [CS:N]Grovyle[CR] is...?",
                                });
                                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                message_SetFace(ACTOR_ATTENDANT1, FACE_SAD, FACE_POS_STANDARD);
                                message_SwitchTalk ($PARTNER_TALK_KIND) {
                                    case 1:
                                        {
                                            english=" [CS:N]Lapras[CR]...[K]well, [CS:N]Grovyle[CR] is...",
                                        }
                                    case 2:
                                        {
                                            english=" [CS:N]Lapras[CR]...[K]well, [CS:N]Grovyle[CR] is...",
                                        }
                                    default:
                                        {
                                            english=" [CS:N]Lapras[CR]...[K]well, [CS:N]Grovyle[CR] is...",
                                        }
                                }
                                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                                message_Talk({
                                    english=" ...[K]N-n-no...[K]it can\'t be...",
                                });
                                message_Talk({
                                    english=" [CS:N]Grovyle[CR] is...?",
                                });
                                message_Talk({
                                    english=" ...Well...[K]I see...[K] I find it hard to\naccept, but...",
                                });
                                message_Talk({
                                    english=" For now...[K]we must go onward...",
                                });
                                jump @label_136;
                            case menu({
                                english="No",
                            }):
                                jump @label_135;
                        }
                    }
                    break;
                case 11:
                    §label_132;
                    CallCommon(CORO_SUBSCREEN_INIT);
                    with (actor ACTOR_TALK_MAIN) {
                        ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
                    }
                    with (actor ACTOR_TALK_SUB) {
                        ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
                    }
                    with (actor ACTOR_ATTENDANT1) {
                        SetAnimation(2);
                    }
                    with (actor ACTOR_ATTENDANT1) {
                        Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
                    }
                    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                    message_Talk({
                        english=" Would you like to go to the\n[CS:P]Hidden Land[CR]?",
                    });
                    switch ( message_SwitchMenu(0, 1) ) {
                        case menu({
                            english="Yes",
                        }):
                            §label_137;
                            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                            switch ( ProcessSpecial(PROCESS_SPECIAL_IS_TEAM_SETUP_HERO_AND_PARTNER_ONLY, 0, 0) ) {
                                case 1:
                                    message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                                    message_Talk({
                                        english=" I see.",
                                    });
                                    message_Talk({
                                        english=" Off we go to the [CS:P]Hidden Land[CR].",
                                    });
                                    message_Close();
                                    if ( scn($SCENARIO_MAIN) >= [29, 1] ) {
                                        debug_Print('BGM_FADEOUT');
                                        bgm_FadeOut(60);
                                        main_EnterDungeon(38, 30);
                                        switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }
                                        main_EnterDungeon(-1, 30);
                                        Wait(30);
                                        hold;
                                    } else {
                                        bgm_FadeOut(60);
                                        main_EnterGround(LEVEL_D27P11A, 30);
                                        hold;
                                    }
                                    break;
                                default:
                                    switch ( ProcessSpecial(PROCESS_SPECIAL_IS_TEAM_SETUP_PARTNER_AND_HERO_ONLY, 0, 0) ) {
                                        case 1:
                                            with (actor ACTOR_ATTENDANT1) {
                                                Turn2DirectionLives(4, 10, ACTOR_PLAYER);
                                            }
                                            WaitExecuteLives(ACTOR_ATTENDANT1);
                                            message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
                                            message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                case 1:
                                                    {
                                                        english=" Hey, [hero].",
                                                    }
                                                case 2:
                                                    {
                                                        english=" Listen, [hero].",
                                                    }
                                                default:
                                                    {
                                                        english=" Say, [hero].",
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
                                                        english=" When we go to the [CS:P]Hidden Land[CR],\nyou should be the leader, [hero].",
                                                    }
                                                case 2:
                                                    {
                                                        english=" When we go to the [CS:P]Hidden Land[CR],\nyou should be the leader, [hero].",
                                                    }
                                                default:
                                                    {
                                                        english=" When we go to the [CS:P]Hidden Land[CR],\nyou should be the leader, [hero].",
                                                    }
                                            }
                                            message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                case 1:
                                                    {
                                                        english=" After all, that\'s the way we\'ve\nalways done it for important missions.",
                                                    }
                                                case 2:
                                                    {
                                                        english=" After all, that\'s the way we\'ve\nalways handled things on important missions.",
                                                    }
                                                default:
                                                    {
                                                        english=" After all, that\'s the way we\'ve\nalways done it for important missions.",
                                                    }
                                            }
                                            message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                case 1:
                                                    {
                                                        english=" So I was thinking you should be\nleader again, [hero].[K] What do you think?",
                                                    }
                                                case 2:
                                                    {
                                                        english=" So I was thinking you should be\nleader again, [hero].[K] What do you think?",
                                                    }
                                                default:
                                                    {
                                                        english=" So I was thinking you should be\nleader again, [hero].[K] What do you think?",
                                                    }
                                            }
                                            switch ( message_SwitchMenu(0, 1) ) {
                                                case menu({
                                                    english="Accept leadership",
                                                }):
                                                default:
                                                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                                    switch ( ProcessSpecial(PROCESS_SPECIAL_SET_TEAM_SETUP_HERO_AND_PARTNER_ONLY, 0, 0) ) { }
                                                    message_SetFace(ACTOR_ATTENDANT1, FACE_HAPPY, FACE_POS_STANDARD);
                                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                        case 1:
                                                            {
                                                                english=" Cool![K] That\'s it, then!\nNow [hero]\'s the leader!",
                                                            }
                                                        case 2:
                                                            {
                                                                english=" OK![K] That\'s settled. You\'re the\nleader, [hero]!",
                                                            }
                                                        default:
                                                            {
                                                                english=" OK![K] You\'re the team leader,\n[hero]!",
                                                            }
                                                    }
                                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                        case 1:
                                                            {
                                                                english=" Let\'s go! Off to the [CS:P]Hidden Land[CR]!",
                                                            }
                                                        case 2:
                                                            {
                                                                english=" Let\'s go! Off to the [CS:P]Hidden Land[CR]!",
                                                            }
                                                        default:
                                                            {
                                                                english=" Let\'s go! Off to the [CS:P]Hidden Land[CR]!",
                                                            }
                                                    }
                                                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                                    with (actor ACTOR_ATTENDANT1) {
                                                        Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
                                                    }
                                                    WaitExecuteLives(ACTOR_ATTENDANT1);
                                                    with (actor ACTOR_PLAYER) {
                                                        Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
                                                    }
                                                    jump @label_137;
                                                case menu({
                                                    english="Refuse",
                                                }):
                                                    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                                    message_SetFace(ACTOR_ATTENDANT1, FACE_SURPRISED, FACE_POS_STANDARD);
                                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                        case 1:
                                                            {
                                                                english=" Whoa![K] Hang on, we\'re going with\nme as leader?",
                                                            }
                                                        case 2:
                                                            {
                                                                english=" What?[K] Wait, so I\'m going as\nthe leader?",
                                                            }
                                                        default:
                                                            {
                                                                english=" Pardon?[K] So I\'m going to go as\nthe leader?",
                                                            }
                                                    }
                                                    message_SetFace(ACTOR_ATTENDANT1, FACE_WORRIED, FACE_POS_STANDARD);
                                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                        case 1:
                                                            {
                                                                english=" Hmm...[K] I don\'t feel confident\nabout doing that...",
                                                            }
                                                        case 2:
                                                            {
                                                                english=" Hmm...[K] I don\'t have the\nconfidence to do that...",
                                                            }
                                                        default:
                                                            {
                                                                english=" Hmm...[K] I don\'t feel confident\nenough to be the leader...",
                                                            }
                                                    }
                                                    message_SwitchTalk ($PARTNER_TALK_KIND) {
                                                        case 1:
                                                            {
                                                                english=" If we go to the [CS:P]Hidden Land[CR], you\nshould be the leader, [hero]...",
                                                            }
                                                        case 2:
                                                            {
                                                                english=" If we go to the [CS:P]Hidden Land[CR], you\nshould be the leader, [hero]...",
                                                            }
                                                        default:
                                                            {
                                                                english=" If we go to the [CS:P]Hidden Land[CR], you\nshould be the leader, [hero]...",
                                                            }
                                                    }
                                                    message_Close();
                                                    jump @label_130;
                                            }
                                            break;
                                        default:
                                            if ( scn($SCENARIO_MAIN) >= [26, 1] ) {
                                                message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                                                message_Talk({
                                                    english=" The [CS:P]Hidden Land[CR] is a pure place\nwhere only the chosen may go.",
                                                });
                                                message_Talk({
                                                    english=" Only the two of you may go,\n[hero] and [partner]...[K] Is that OK?",
                                                });
                                                switch ( message_SwitchMenu(0, 1) ) {
                                                    case menu({
                                                        english="Go as a duo",
                                                    }):
                                                    default:
                                                        switch ( ProcessSpecial(PROCESS_SPECIAL_SET_TEAM_SETUP_HERO_AND_PARTNER_ONLY, 0, 0) ) { }
                                                        jump @label_137;
                                                    case menu({
                                                        english="Don\'t go",
                                                    }):
                                                        §label_138;
                                                        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                                                        message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                                                        message_Talk({
                                                            english=" I see.",
                                                        });
                                                        message_Talk({
                                                            english=" Then please tell me anytime\nthat you want to go to the [CS:P]Hidden Land[CR] again.",
                                                        });
                                                        message_Close();
                                                        jump @label_130;
                                                }
                                            } else {
                                                message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
                                                message_Talk({
                                                    english=" The [CS:P]Hidden Land[CR] is a pure place\nwhere only the chosen may go.",
                                                });
                                                message_Talk({
                                                    english=" You may not bring other team\nmembers.",
                                                });
                                                message_Talk({
                                                    english=" Just the three of you...\n[hero], [partner], and [CS:N]Grovyle[CR]...\nhave been chosen.",
                                                });
                                                message_Talk({
                                                    english=" So only your trio may go. Is that\nall right?",
                                                });
                                                switch ( message_SwitchMenu(0, 1) ) {
                                                    case menu({
                                                        english="Go as a trio",
                                                    }):
                                                    default:
                                                        switch ( ProcessSpecial(PROCESS_SPECIAL_SET_TEAM_SETUP_HERO_AND_PARTNER_ONLY, 0, 0) ) { }
                                                        jump @label_137;
                                                    case menu({
                                                        english="Don\'t go",
                                                    }):
                                                        jump @label_138;
                                                }
                                            }
                                            break;
                                    }
                                    break;
                            }
                            break;
                        case menu({
                            english="No",
                        }):
                        default:
                            jump @label_138;
                    }
                    break;
                default:
                    jump @label_130;
            }
        } else {
            $SCENARIO_TALK_BIT_FLAG[47] = 1;
            with (actor ACTOR_TALK_MAIN) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_TALK_SUB) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
            }
            message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
            message_Talk({
                english=" Oh?[K] Someone was nearly\novercome by the waves at this beach?",
            });
            message_Talk({
                english=" That\'s terrible! I\'m sorry...[K]\nI never knew that happened...",
            });
            message_Close();
            jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [29, 93] || scn($SCENARIO_MAIN) >= [29, 92] ) {
        if ( $SCENARIO_TALK_BIT_FLAG[46] ) {
            jump @label_75;
        } else {
            $SCENARIO_TALK_BIT_FLAG[46] = 1;
            with (actor ACTOR_TALK_MAIN) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_TALK_SUB) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
            }
            message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
            message_Talk({
                english=" Oh...[K]I see...",
            });
            message_Talk({
                english=" [CS:N]Darkrai[CR] was shattered along\nwith the dimensional hole...",
            });
            message_Talk({
                english=" He has likely lost his memory\nand been banished to some unknown place...",
            });
            message_Talk({
                english=" That could be a very good thing.",
            });
            message_Talk({
                english=" For the world, certainly![K]\nBut maybe for [CS:N]Darkrai[CR] too...",
            });
            message_Talk({
                english=" Well...that is over.",
            });
            message_Talk({
                english=" Peace has returned...[K]and it\'s\nyour team\'s doing, [hero]!",
            });
            message_Talk({
                english=" Thank you very much!",
            });
            message_Close();
            jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [29, 91] || scn($SCENARIO_MAIN) >= [29, 90] || scn($SCENARIO_MAIN) >= [29, 89] || scn($SCENARIO_MAIN) >= [29, 88] || scn($SCENARIO_MAIN) >= [29, 87] ) {
        if ( $SCENARIO_TALK_BIT_FLAG[45] ) {
            jump @label_75;
        } else {
            $SCENARIO_TALK_BIT_FLAG[45] = 1;
            with (actor ACTOR_TALK_MAIN) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_TALK_SUB) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
            }
            message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
            message_Talk({
                english=" The whole plot to destroy\n[CS:P]Temporal Tower[CR]...",
            });
            message_Talk({
                english=" and the plot to expand the\ndistortion of space itself...",
            });
            message_Talk({
                english=" It was all put into motion by\nthat wicked Pokémon [CS:N]Darkrai[CR]...",
            });
            message_Talk({
                english=" I must add my voice to all those\nalready pleading for your help, [hero].",
            });
            message_Talk({
                english=" Please stop [CS:N]Darkrai[CR]\'s\nawful scheme!",
            });
            message_Talk({
                english=" Bring lasting peace to the world!",
            });
            message_Close();
            jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [29, 85] || scn($SCENARIO_MAIN) >= [29, 84] || scn($SCENARIO_MAIN) >= [29, 83] || scn($SCENARIO_MAIN) >= [29, 82] || scn($SCENARIO_MAIN) >= [29, 81] || scn($SCENARIO_MAIN) >= [29, 80] || scn($SCENARIO_MAIN) >= [29, 78] ) {
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 76] || scn($SCENARIO_MAIN) >= [29, 75] || scn($SCENARIO_MAIN) >= [29, 73] || scn($SCENARIO_MAIN) >= [29, 72] || scn($SCENARIO_MAIN) >= [29, 71] || scn($SCENARIO_MAIN) >= [29, 70] || scn($SCENARIO_MAIN) >= [29, 69] || scn($SCENARIO_MAIN) >= [29, 67] ) {
        jump @label_132;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 56] || scn($SCENARIO_MAIN) >= [29, 55] || scn($SCENARIO_MAIN) >= [29, 54] || scn($SCENARIO_MAIN) >= [29, 53] || scn($SCENARIO_MAIN) >= [29, 52] || scn($SCENARIO_MAIN) >= [29, 50] || scn($SCENARIO_MAIN) >= [29, 49] || scn($SCENARIO_MAIN) >= [29, 48] || scn($SCENARIO_MAIN) >= [29, 47] || scn($SCENARIO_MAIN) >= [29, 46] || scn($SCENARIO_MAIN) >= [29, 45] || scn($SCENARIO_MAIN) >= [29, 44] || scn($SCENARIO_MAIN) >= [29, 43] || scn($SCENARIO_MAIN) >= [29, 42] || scn($SCENARIO_MAIN) >= [29, 41] || scn($SCENARIO_MAIN) >= [29, 40] || scn($SCENARIO_MAIN) >= [29, 39] || scn($SCENARIO_MAIN) >= [29, 33] || scn($SCENARIO_MAIN) >= [29, 32] || scn($SCENARIO_MAIN) >= [29, 31] || scn($SCENARIO_MAIN) >= [29, 30] || scn($SCENARIO_MAIN) >= [29, 29] || scn($SCENARIO_MAIN) >= [29, 28] || scn($SCENARIO_MAIN) >= [29, 27] || scn($SCENARIO_MAIN) >= [29, 26] || scn($SCENARIO_MAIN) >= [29, 25] || scn($SCENARIO_MAIN) >= [29, 24] || scn($SCENARIO_MAIN) >= [29, 23] || scn($SCENARIO_MAIN) >= [29, 22] || scn($SCENARIO_MAIN) >= [29, 21] || scn($SCENARIO_MAIN) >= [29, 20] || scn($SCENARIO_MAIN) >= [29, 19] || scn($SCENARIO_MAIN) >= [29, 18] || scn($SCENARIO_MAIN) >= [29, 17] || scn($SCENARIO_MAIN) >= [29, 16] || scn($SCENARIO_MAIN) >= [29, 15] || scn($SCENARIO_MAIN) >= [29, 14] || scn($SCENARIO_MAIN) >= [29, 13] || scn($SCENARIO_MAIN) >= [29, 12] || scn($SCENARIO_MAIN) >= [29, 11] || scn($SCENARIO_MAIN) >= [29, 10] || scn($SCENARIO_MAIN) >= [29, 8] ) {
        jump @label_75;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 6] || scn($SCENARIO_MAIN) >= [29, 5] ) {
        if ( $SCENARIO_TALK_BIT_FLAG[44] ) {
            jump @label_75;
        } else {
            $SCENARIO_TALK_BIT_FLAG[44] = 1;
            with (actor ACTOR_TALK_MAIN) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_TALK_SUB) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
            }
            message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
            message_Talk({
                english=" You graduated from the guild![K]\nCongratulations!",
            });
            message_Talk({
                english=" I\'m sure that will open you to\neven more as an exploration team!",
            });
            message_Talk({
                english=" Consider me a big supporter![K]\nBest of luck!",
            });
            message_Close();
            jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [29, 4] || scn($SCENARIO_MAIN) >= [29, 3] || scn($SCENARIO_MAIN) >= [29, 2] || scn($SCENARIO_MAIN) >= [29, 1] ) {
        if ( $SCENARIO_TALK_BIT_FLAG[43] ) {
            jump @label_75;
        } else {
            $SCENARIO_TALK_BIT_FLAG[43] = 1;
            with (actor ACTOR_TALK_MAIN) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_TALK_SUB) {
                ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_RAPURASU);
            }
            message_SetFace(ACTOR_NPC_RAPURASU, FACE_NORMAL, FACE_POS_STANDARD);
            message_Talk({
                english=" I\'m glad you were able to halt\n[CS:P]Temporal Tower[CR]\'s destruction.",
            });
            message_Talk({
                english=" And [hero] even returned\nsafely...[K] I\'m delighted to hear it.",
            });
            message_Talk({
                english=" Finally, the world is at peace.[K]\nYour exploration team is back in action too.",
            });
            message_Talk({
                english=" Please tell me whenever you\nwant to go to the [CS:P]Hidden Land[CR] again.",
            });
            message_Close();
            jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [25, 4] || scn($SCENARIO_MAIN) >= [25, 3] || scn($SCENARIO_MAIN) >= [25, 2] || scn($SCENARIO_MAIN) >= [25, 2] || scn($SCENARIO_MAIN) >= [25, 1] ) {
        jump @label_75;
    } elseif ( scn($SCENARIO_MAIN) >= [24, 1] || scn($SCENARIO_MAIN) >= [24, 1] || scn($SCENARIO_MAIN) >= [23, 3] || scn($SCENARIO_MAIN) >= [23, 2] || scn($SCENARIO_MAIN) >= [23, 1] || scn($SCENARIO_MAIN) >= [22, 3] || scn($SCENARIO_MAIN) >= [22, 2] || scn($SCENARIO_MAIN) >= [21, 2] || scn($SCENARIO_MAIN) >= [21, 1] || scn($SCENARIO_MAIN) >= [20, 4] || scn($SCENARIO_MAIN) >= [20, 3] || scn($SCENARIO_MAIN) >= [20, 2] || scn($SCENARIO_MAIN) >= [20, 1] || scn($SCENARIO_MAIN) >= [17, 3] || scn($SCENARIO_MAIN) >= [17, 1] || scn($SCENARIO_MAIN) >= [16, 2] || scn($SCENARIO_MAIN) >= [16, 0] || scn($SCENARIO_MAIN) >= [15, 4] || scn($SCENARIO_MAIN) >= [15, 1] || scn($SCENARIO_MAIN) >= [14, 5] || scn($SCENARIO_MAIN) >= [14, 4] || scn($SCENARIO_MAIN) >= [14, 2] || scn($SCENARIO_MAIN) >= [14, 1] || scn($SCENARIO_MAIN) >= [13, 2] || scn($SCENARIO_MAIN) >= [13, 1] || scn($SCENARIO_MAIN) >= [12, 4] || scn($SCENARIO_MAIN) >= [12, 3] || scn($SCENARIO_MAIN) >= [12, 1] || scn($SCENARIO_MAIN) >= [10, 2] || scn($SCENARIO_MAIN) >= [10, 1] || scn($SCENARIO_MAIN) >= [9, 5] || scn($SCENARIO_MAIN) >= [9, 4] || scn($SCENARIO_MAIN) >= [9, 2] || scn($SCENARIO_MAIN) >= [9, 1] || scn($SCENARIO_MAIN) >= [8, 7] || scn($SCENARIO_MAIN) >= [8, 6] || scn($SCENARIO_MAIN) >= [8, 5] || scn($SCENARIO_MAIN) >= [8, 3] || scn($SCENARIO_MAIN) >= [8, 2] || scn($SCENARIO_MAIN) >= [8, 1] || scn($SCENARIO_MAIN) >= [7, 6] || scn($SCENARIO_MAIN) >= [7, 3] || scn($SCENARIO_MAIN) >= [7, 2] || scn($SCENARIO_MAIN) >= [7, 1] || scn($SCENARIO_MAIN) >= [6, 5] || scn($SCENARIO_MAIN) >= [6, 1] || scn($SCENARIO_MAIN) >= [5, 5] || scn($SCENARIO_MAIN) >= [4, 7] || scn($SCENARIO_MAIN) >= [4, 5] || scn($SCENARIO_MAIN) >= [4, 3] || scn($SCENARIO_MAIN) >= [4, 2] || scn($SCENARIO_MAIN) >= [4, 1] || scn($SCENARIO_MAIN) >= [4, 0] || scn($SCENARIO_MAIN) >= [3, 1] ) {
        jump @label_130;
    } else {
        jump @label_130;
    }
}
