
def 0 {
    if ( scn($SCENARIO_MAIN) >= [29, 94] || scn($SCENARIO_MAIN) >= [29, 93] || scn($SCENARIO_MAIN) >= [29, 92] || scn($SCENARIO_MAIN) >= [29, 91] || scn($SCENARIO_MAIN) >= [29, 90] || scn($SCENARIO_MAIN) >= [29, 89] || scn($SCENARIO_MAIN) >= [29, 88] || scn($SCENARIO_MAIN) >= [29, 87] || scn($SCENARIO_MAIN) >= [29, 85] || scn($SCENARIO_MAIN) >= [29, 84] || scn($SCENARIO_MAIN) >= [29, 83] || scn($SCENARIO_MAIN) >= [29, 82] || scn($SCENARIO_MAIN) >= [29, 81] || scn($SCENARIO_MAIN) >= [29, 80] || scn($SCENARIO_MAIN) >= [29, 78] || scn($SCENARIO_MAIN) >= [29, 76] || scn($SCENARIO_MAIN) >= [29, 75] || scn($SCENARIO_MAIN) >= [29, 73] || scn($SCENARIO_MAIN) >= [29, 72] || scn($SCENARIO_MAIN) >= [29, 71] || scn($SCENARIO_MAIN) >= [29, 70] || scn($SCENARIO_MAIN) >= [29, 69] || scn($SCENARIO_MAIN) >= [29, 67] || scn($SCENARIO_MAIN) >= [29, 56] || scn($SCENARIO_MAIN) >= [29, 55] || scn($SCENARIO_MAIN) >= [29, 54] || scn($SCENARIO_MAIN) >= [29, 53] || scn($SCENARIO_MAIN) >= [29, 52] || scn($SCENARIO_MAIN) >= [29, 50] || scn($SCENARIO_MAIN) >= [29, 49] || scn($SCENARIO_MAIN) >= [29, 48] || scn($SCENARIO_MAIN) >= [29, 47] || scn($SCENARIO_MAIN) >= [29, 46] || scn($SCENARIO_MAIN) >= [29, 45] || scn($SCENARIO_MAIN) >= [29, 44] || scn($SCENARIO_MAIN) >= [29, 43] || scn($SCENARIO_MAIN) >= [29, 42] || scn($SCENARIO_MAIN) >= [29, 41] || scn($SCENARIO_MAIN) >= [29, 40] || scn($SCENARIO_MAIN) >= [29, 39] || scn($SCENARIO_MAIN) >= [29, 33] || scn($SCENARIO_MAIN) >= [29, 32] || scn($SCENARIO_MAIN) >= [29, 31] || scn($SCENARIO_MAIN) >= [29, 30] || scn($SCENARIO_MAIN) >= [29, 29] || scn($SCENARIO_MAIN) >= [29, 28] || scn($SCENARIO_MAIN) >= [29, 27] || scn($SCENARIO_MAIN) >= [29, 26] || scn($SCENARIO_MAIN) >= [29, 25] || scn($SCENARIO_MAIN) >= [29, 24] || scn($SCENARIO_MAIN) >= [29, 23] || scn($SCENARIO_MAIN) >= [29, 22] || scn($SCENARIO_MAIN) >= [29, 21] || scn($SCENARIO_MAIN) >= [29, 20] || scn($SCENARIO_MAIN) >= [29, 19] || scn($SCENARIO_MAIN) >= [29, 18] || scn($SCENARIO_MAIN) >= [29, 17] || scn($SCENARIO_MAIN) >= [29, 16] || scn($SCENARIO_MAIN) >= [29, 15] || scn($SCENARIO_MAIN) >= [29, 14] || scn($SCENARIO_MAIN) >= [29, 13] || scn($SCENARIO_MAIN) >= [29, 12] || scn($SCENARIO_MAIN) >= [29, 11] || scn($SCENARIO_MAIN) >= [29, 10] || scn($SCENARIO_MAIN) >= [29, 8] || scn($SCENARIO_MAIN) >= [29, 6] || scn($SCENARIO_MAIN) >= [29, 5] || scn($SCENARIO_MAIN) >= [29, 4] || scn($SCENARIO_MAIN) >= [29, 3] || scn($SCENARIO_MAIN) >= [29, 2] || scn($SCENARIO_MAIN) >= [29, 1] || scn($SCENARIO_MAIN) >= [25, 4] ) {
        switch ( $GROUND_ENTER ) {
            case 59:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" I don\'t care if [CS:N]Dusknoir[CR] is\nwaiting to ambush us.",
                });
                message_Talk({
                    english=" We have to get through and get\non the Rainbow Stoneship.",
                });
                message_Close();
                §label_130;
                JumpCommon(CORO_END_TALK);
            case 11:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" We\'ll leave when you\'re ready!",
                });
                message_Talk({
                    english=" We\'re going off to the\n[CS:P]Hidden Land[CR]!",
                });
                message_Close();
                jump @label_130;
            default:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" It doesn\'t matter if [CS:N]Dusknoir[CR] is\nthere or not.",
                });
                message_Talk({
                    english=" We\'ll get through next time.",
                });
                message_Close();
                jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [25, 3] ) {
        switch ( $GROUND_ENTER ) {
            case 59:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" So the priority is finding the\nRainbow Stoneship.[K] If we find it, we can get\nto [CS:P]Temporal Tower[CR].",
                });
                message_Talk({
                    english=" We\'ll leave when you\'re ready!",
                });
                message_Close();
                jump @label_130;
            case 11:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" We\'ll leave when you\'re ready!",
                });
                message_Talk({
                    english=" We\'re going off to the [CS:P]Hidden\nLand[CR]!",
                });
                message_Close();
                jump @label_130;
            default:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" We\'ve made it this far.",
                });
                message_Talk({
                    english=" We\'ll get through this,\nno matter what.",
                });
                message_Close();
                jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [25, 2] ) {
        switch ( $GROUND_ENTER ) {
            case 59:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" So the priority is finding the\nRainbow Stoneship.[K] If we find it, we can get\nto [CS:P]Temporal Tower[CR].",
                });
                message_Talk({
                    english=" We\'ll leave when you\'re ready!",
                });
                message_Close();
                jump @label_130;
            case 11:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" We\'ll leave when you\'re ready!",
                });
                message_Talk({
                    english=" We\'re going off to the [CS:P]Hidden\nLand[CR]!",
                });
                message_Close();
                jump @label_130;
            default:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" According to [CS:N]Lapras[CR], the\n[CS:P]Old Ruins[CR] lie beyond this dungeon...",
                });
                message_Talk({
                    english=" That\'s where we should find the\nRainbow Stoneship.",
                });
                message_Talk({
                    english=" If we find the Rainbow\nStoneship, we\'ll take that to [CS:P]Temporal Tower[CR].",
                });
                message_Close();
                jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [25, 2] ) {
        switch ( $GROUND_ENTER ) {
            case 59:
            default:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" We can\'t afford to give up now.",
                });
                message_Talk({
                    english=" We have to take up the\nchallenge again.[K] We must reach the\nRainbow Stoneship.",
                });
                message_Close();
                jump @label_130;
            case 11:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" We\'ll leave when you\'re ready!",
                });
                message_Talk({
                    english=" We\'re going off to the\n[CS:P]Hidden Land[CR]!",
                });
                message_Close();
                jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [25, 1] ) {
        switch ( $GROUND_ENTER ) {
            case 59:
            default:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" We have to go to [CS:P]Temporal\nTower[CR] and set the Time Gears there.",
                });
                message_Talk({
                    english=" That will put a stop to the\ndestruction of time.",
                });
                message_Talk({
                    english=" We don\'t have far to go,\n[hero]!",
                });
                message_Talk({
                    english=" First, we need to reach the\nRainbow Stoneship!",
                });
                message_Close();
                jump @label_130;
            case 11:
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
                    Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
                }
                message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" We\'ll leave when you\'re ready!",
                });
                message_Talk({
                    english=" We\'re going off to the\n[CS:P]Hidden Land[CR]!",
                });
                message_Close();
                jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [24, 1] || scn($SCENARIO_MAIN) >= [24, 1] || scn($SCENARIO_MAIN) >= [23, 3] || scn($SCENARIO_MAIN) >= [23, 2] || scn($SCENARIO_MAIN) >= [23, 1] || scn($SCENARIO_MAIN) >= [22, 3] || scn($SCENARIO_MAIN) >= [22, 2] || scn($SCENARIO_MAIN) >= [21, 2] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
        }
        message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" It feels different from before...\nSomething has changed here...",
        });
        message_Talk({
            english=" Hurry. We have to go.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [21, 1] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
        }
        message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" There should be a Time Gear at\nthe deepest part of this forest.",
        });
        message_Talk({
            english=" We\'re leaving as soon as\nyou\'re ready.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [20, 4] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
        }
        message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" We\'re nearly there.",
        });
        message_Talk({
            english=" We\'ll leave when you\'re ready.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [20, 3] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
        }
        message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" We can return to the past by\ngoing through the Passage of Time.",
        });
        message_Talk({
            english=" We\'re almost there.[K] We\'re\nleaving as soon as you\'re ready.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [20, 2] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
        }
        message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" If we don\'t hurry, the [CS:N]Sableye[CR]\nwill catch up to us.",
        });
        message_Talk({
            english=" We\'re leaving as soon as\nyou\'re ready.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [20, 1] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_JUPUTORU);
        }
        message_SetFace(ACTOR_NPC_JUPUTORU, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" If we don\'t hurry, the [CS:N]Sableye[CR]\nwill catch up to us.",
        });
        message_Talk({
            english=" We\'re leaving as soon as\nyou\'re ready.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [17, 3] || scn($SCENARIO_MAIN) >= [17, 1] || scn($SCENARIO_MAIN) >= [16, 2] || scn($SCENARIO_MAIN) >= [16, 0] || scn($SCENARIO_MAIN) >= [15, 4] || scn($SCENARIO_MAIN) >= [15, 1] || scn($SCENARIO_MAIN) >= [14, 5] || scn($SCENARIO_MAIN) >= [14, 4] || scn($SCENARIO_MAIN) >= [14, 2] || scn($SCENARIO_MAIN) >= [14, 1] || scn($SCENARIO_MAIN) >= [13, 2] || scn($SCENARIO_MAIN) >= [13, 1] || scn($SCENARIO_MAIN) >= [12, 4] || scn($SCENARIO_MAIN) >= [12, 3] || scn($SCENARIO_MAIN) >= [12, 1] || scn($SCENARIO_MAIN) >= [10, 2] || scn($SCENARIO_MAIN) >= [10, 1] || scn($SCENARIO_MAIN) >= [9, 5] || scn($SCENARIO_MAIN) >= [9, 4] || scn($SCENARIO_MAIN) >= [9, 2] || scn($SCENARIO_MAIN) >= [9, 1] || scn($SCENARIO_MAIN) >= [8, 7] || scn($SCENARIO_MAIN) >= [8, 6] || scn($SCENARIO_MAIN) >= [8, 5] || scn($SCENARIO_MAIN) >= [8, 3] || scn($SCENARIO_MAIN) >= [8, 2] || scn($SCENARIO_MAIN) >= [8, 1] || scn($SCENARIO_MAIN) >= [7, 6] || scn($SCENARIO_MAIN) >= [7, 3] || scn($SCENARIO_MAIN) >= [7, 2] || scn($SCENARIO_MAIN) >= [7, 1] || scn($SCENARIO_MAIN) >= [6, 5] || scn($SCENARIO_MAIN) >= [6, 1] || scn($SCENARIO_MAIN) >= [5, 5] || scn($SCENARIO_MAIN) >= [4, 7] || scn($SCENARIO_MAIN) >= [4, 5] || scn($SCENARIO_MAIN) >= [4, 3] || scn($SCENARIO_MAIN) >= [4, 2] || scn($SCENARIO_MAIN) >= [4, 1] || scn($SCENARIO_MAIN) >= [4, 0] || scn($SCENARIO_MAIN) >= [3, 1] ) {
        jump @label_130;
    } else {
        jump @label_130;
    }
}
