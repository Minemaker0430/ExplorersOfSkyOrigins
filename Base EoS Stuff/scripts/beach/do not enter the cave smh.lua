
def 0 {
    switch ( $EXECUTE_SPECIAL_EPISODE_TYPE ) {
        case 0:
            §label_0;
            with (actor ACTOR_PLAYER_BIPPA) {
                SetAnimation(2);
            }
            supervision_ExecuteCommon(CORO_EVENT_N01_08);
            §label_8;
            message_Close();
            supervision_Suspend(-2);
            end;
        case 2:
            with (actor ACTOR_PLAYER_KIMAWARI) {
                SetAnimation(2);
            }
            supervision_ExecuteCommon(CORO_EVENT_N04_04);
            jump @label_8;
        default:
            with (actor ACTOR_PLAYER) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            if ( scn($SCENARIO_MAIN) == [23, 2] ) {
                with (actor ACTOR_ATTENDANT1) {
                    Turn2DirectionLives(4, 10, ACTOR_PLAYER);
                }
                WaitExecuteLives(ACTOR_ATTENDANT1);
                with (actor ACTOR_PLAYER) {
                    Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
                }
                message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" We shouldn\'t go exploring now.\nWe have to get ready for tomorrow.",
                        }
                    case 2:
                        {
                            english=" We shouldn\'t go exploring now.\nWe have to get ready for tomorrow.",
                        }
                    default:
                        {
                            english=" We shouldn\'t go exploring now.\nWe have to get ready for tomorrow.",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Let\'s go to Treasure Town.",
                        }
                    case 2:
                        {
                            english=" We have to go to Treasure\nTown.",
                        }
                    default:
                        {
                            english=" We have to go to Treasure\nTown.",
                        }
                }
                message_Close();
                jump @label_8;
            } elseif ( scn($SCENARIO_MAIN) == [14, 1] ) {
                with (actor ACTOR_ATTENDANT1) {
                    Turn2DirectionLives(4, 10, ACTOR_PLAYER);
                }
                WaitExecuteLives(ACTOR_ATTENDANT1);
                with (actor ACTOR_PLAYER) {
                    Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
                }
                message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" No, we can\'t, [hero].",
                        }
                    case 2:
                        {
                            english=" No, we can\'t, [hero].",
                        }
                    default:
                        {
                            english=" No, we can\'t, [hero].",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" We have to get ready for\ncapturing [CS:N]Grovyle[CR], right?",
                        }
                    case 2:
                        {
                            english=" We\'re supposed to get ready for\ncapturing [CS:N]Grovyle[CR] first, right?",
                        }
                    default:
                        {
                            english=" Aren\'t we supposed to get ready\nfor capturing [CS:N]Grovyle[CR] first?",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" Let\'s get back to the guild as\nsoon as we\'re ready.",
                        }
                    case 2:
                        {
                            english=" Let\'s go back to the guild as\nsoon as we\'re ready.",
                        }
                    default:
                        {
                            english=" We\'ll go back to the guild as\nsoon as we\'re ready.",
                        }
                }
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                jump @label_8;
            } elseif ( scn($SCENARIO_MAIN) == [9, 1] ) {
                with (actor ACTOR_ATTENDANT1) {
                    Turn2DirectionLives(4, 10, ACTOR_PLAYER);
                }
                WaitExecuteLives(ACTOR_ATTENDANT1);
                with (actor ACTOR_PLAYER) {
                    Turn2DirectionLives(4, 10, ACTOR_ATTENDANT1);
                }
                message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" If we dawdle now, they\'ll go\nwithout us on the expedition!",
                        }
                    case 2:
                        {
                            english=" If we dawdle now, they\'ll leave\nus behind on the expedition!",
                        }
                    default:
                        {
                            english=" If we\'re late now, they\'ll leave\nus behind on the expedition!",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" When we\'re ready to leave on\nthe expedition, we have to go back to\nthe guild.",
                        }
                    case 2:
                        {
                            english=" When we\'re ready for the\nexpedition, we have to go back to the guild.",
                        }
                    default:
                        {
                            english=" When we\'re ready for the\nexpedition, we have to go back to the guild.",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" We have to let [CS:N]Chatot[CR] know\nwe\'re ready!",
                        }
                    case 2:
                        {
                            english=" We have to report in to [CS:N]Chatot[CR]!",
                        }
                    default:
                        {
                            english=" We have to let [CS:N]Chatot[CR] know\nwe\'re ready!",
                        }
                }
                jump @label_8;
            } elseif ( scn($SCENARIO_MAIN) < [4, 5] ) {
                message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" We don\'t have the time to\nwander off.",
                        }
                    case 2:
                        {
                            english=" This is no time to be dawdling.",
                        }
                    default:
                        {
                            english=" We can\'t take any detours.",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" We have to do the guild\'s\nwork now.",
                        }
                    case 2:
                        {
                            english=" We have to do the guild\'s\nwork now.",
                        }
                    default:
                        {
                            english=" We have the guild\'s work to\ndo now.",
                        }
                }
                message_SwitchTalk ($PARTNER_TALK_KIND) {
                    case 1:
                        {
                            english=" [CS:N]Bidoof[CR]\'s waiting at the guild.\nLet\'s move it!",
                        }
                    case 2:
                        {
                            english=" [CS:N]Bidoof[CR]\'s waiting at the guild.\nLet\'s get going!",
                        }
                    default:
                        {
                            english=" [CS:N]Bidoof[CR]\'s waiting at the guild.\nWe have to hurry!",
                        }
                }
                jump @label_8;
            } else {
                message_ResetActor();
                message_Mail({
                    english="[CN]Would you like to go to the [CS:P]Beach Cave[CR]?",
                });
                switch ( message_SwitchMenu(1, 1) ) {
                    case menu({
                        english="Yes",
                    }):
                        message_Close();
                        Wait(10);
                        switch ( main_EnterAdventure(1, 30) ) {
                            case 0:
                            default:
                                debug_Print('BGM_FADEOUT');
                                message_Close();
                                bgm_FadeOut(60);
                                switch ( message_Menu(MENU_DUNGEON_INITIALIZE_TEAM) ) { }
                                main_EnterDungeon(1, 30);
                                main_EnterDungeon(-1, 30);
                                hold;
                            case 1:
                                jump @label_8;
                            case 7:
                                message_Mail({
                                    english="\n[CN]Caution!",
                                });
                                message_Mail({
                                    english="[CN]This rescue cannot be undertaken unless\n[CN]the team includes certain Pokémon.",
                                });
                                message_Mail({
                                    english="[CN]Please put together your team\n[CN]with the Pokémon specified by\n[CN]the job, or \"Suspend\" the job.",
                                });
                                jump @label_8;
                            case 8:
                                message_Mail({
                                    english="\n[CN]Caution!",
                                });
                                message_Mail({
                                    english="[CN]This rescue cannot be undertaken unless\n[CN]the team includes certain Pokémon.",
                                });
                                message_Mail({
                                    english="[CN]Please put together your team\n[CN]with the Pokémon specified by\n[CN]the job, or \"Suspend\" the job.",
                                });
                                jump @label_8;
                        }
                        break;
                    case menu({
                        english="No",
                    }):
                        jump @label_8;
                    default:
                        jump @label_8;
                }
            }
            break;
    }
}

def 1 for_actor(ACTOR_PLAYER) {
    hold;
}
