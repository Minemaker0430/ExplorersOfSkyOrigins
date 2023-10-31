
def 0 {
    if ( scn($SCENARIO_MAIN) >= [29, 94] || scn($SCENARIO_MAIN) >= [29, 93] || scn($SCENARIO_MAIN) >= [29, 92] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" My partner was terrified of\nme, and I didn\'t know it...",
        });
        message_Talk({
            english=" As a leader...[K]I must be a failure.",
        });
        message_Close();
        §label_130;
        JumpCommon(CORO_END_TALK);
    } elseif ( scn($SCENARIO_MAIN) >= [29, 91] || scn($SCENARIO_MAIN) >= [29, 90] || scn($SCENARIO_MAIN) >= [29, 89] || scn($SCENARIO_MAIN) >= [29, 88] || scn($SCENARIO_MAIN) >= [29, 87] || scn($SCENARIO_MAIN) >= [29, 85] || scn($SCENARIO_MAIN) >= [29, 84] || scn($SCENARIO_MAIN) >= [29, 83] || scn($SCENARIO_MAIN) >= [29, 82] || scn($SCENARIO_MAIN) >= [29, 81] || scn($SCENARIO_MAIN) >= [29, 80] || scn($SCENARIO_MAIN) >= [29, 78] || scn($SCENARIO_MAIN) >= [29, 76] || scn($SCENARIO_MAIN) >= [29, 75] || scn($SCENARIO_MAIN) >= [29, 73] || scn($SCENARIO_MAIN) >= [29, 72] || scn($SCENARIO_MAIN) >= [29, 71] || scn($SCENARIO_MAIN) >= [29, 70] || scn($SCENARIO_MAIN) >= [29, 69] || scn($SCENARIO_MAIN) >= [29, 67] || scn($SCENARIO_MAIN) >= [29, 56] || scn($SCENARIO_MAIN) >= [29, 55] ) {
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_OOSUBAME) {
            SetAnimation(2);
        }
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        WaitExecuteLives(ACTOR_PLAYER);
        se_Play(8968);
        with (actor ACTOR_NPC_OOSUBAME) {
            SetEffect(EFFECT_SHOCKED, 3);
        }
        with (actor ACTOR_NPC_OOSUBAME) {
            WaitEffect();
        }
        WaitExecuteLives(ACTOR_NPC_OOSUBAME);
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" What...[K]what are you suggesting?",
        });
        message_Talk({
            english=" Me? Eat you? Are you kidding?",
        });
        message_Talk({
            english=" [CS:N]Wurmple[CR]![K] You\'re my\ntrusted partner.",
        });
        message_Talk({
            english=" You\'re my one...[K]and only partner.\nThere\'s no replacing you!",
        });
        message_Talk({
            english=" You and me, we\'re going to keep\non exploring together like we\'ve always done.",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_KEMUSSO) {
            SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            WaitEffect();
        }
        WaitExecuteLives(ACTOR_NPC_KEMUSSO);
        Wait(30);
        se_Play(8962);
        with (actor ACTOR_NPC_OOSUBAME) {
            SetEffect(EFFECT_QUESTION_MARK, 3);
        }
        with (actor ACTOR_NPC_OOSUBAME) {
            WaitEffect();
        }
        WaitExecuteLives(ACTOR_NPC_OOSUBAME);
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Hm?[K] Why are you crying?",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 54] || scn($SCENARIO_MAIN) >= [29, 53] || scn($SCENARIO_MAIN) >= [29, 52] || scn($SCENARIO_MAIN) >= [29, 50] || scn($SCENARIO_MAIN) >= [29, 49] || scn($SCENARIO_MAIN) >= [29, 48] || scn($SCENARIO_MAIN) >= [29, 47] || scn($SCENARIO_MAIN) >= [29, 46] || scn($SCENARIO_MAIN) >= [29, 45] || scn($SCENARIO_MAIN) >= [29, 44] || scn($SCENARIO_MAIN) >= [29, 43] || scn($SCENARIO_MAIN) >= [29, 42] || scn($SCENARIO_MAIN) >= [29, 41] || scn($SCENARIO_MAIN) >= [29, 40] || scn($SCENARIO_MAIN) >= [29, 39] || scn($SCENARIO_MAIN) >= [29, 33] || scn($SCENARIO_MAIN) >= [29, 32] || scn($SCENARIO_MAIN) >= [29, 31] ) {
        §label_66;
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_OOSUBAME) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            SetAnimation(2);
        }
        WaitExecuteLives(ACTOR_NPC_KEMUSSO);
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
        message_Talk({
            english=" Hey, [CS:N]Wurmple[CR]!",
        });
        message_Talk({
            english=" Isn\'t it great? The world\'s back\nto peace and all.",
        });
        message_Talk({
            english=" When things are this mellow...",
        });
        message_Talk({
            english=" Don\'t you find yourself\ngetting hungry?",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        se_Play(8968);
        with (actor ACTOR_NPC_KEMUSSO) {
            SetEffect(EFFECT_SHOCKED, 3);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            WaitEffect();
        }
        WaitExecuteLives(ACTOR_NPC_KEMUSSO);
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Wh-what?! H-hungry?!",
        });
        message_Talk({
            english=" Eeep! Y-y-yeesh!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        Wait(10);
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
        message_Talk({
            english=" So let me ask you a question.",
        });
        message_Talk({
            english=" Try to guess...[K]what I really\nwant to eat right now!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        se_Play(8972);
        with (actor ACTOR_NPC_KEMUSSO) {
            SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            WaitEffect();
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Y-y-yeesh!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        Wait(10);
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
        message_Talk({
            english=" [CS:N]Wurmple[CR].[K] Can you guess what I\nmost want to eat right now?",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        se_Play(8974);
        with (actor ACTOR_NPC_KEMUSSO) {
            ExecuteCommon(CORO_JUMP_SURPRISE_FUNC_SERIES, 0);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Eeeep!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 30] || scn($SCENARIO_MAIN) >= [29, 29] || scn($SCENARIO_MAIN) >= [29, 28] || scn($SCENARIO_MAIN) >= [29, 27] || scn($SCENARIO_MAIN) >= [29, 26] || scn($SCENARIO_MAIN) >= [29, 25] || scn($SCENARIO_MAIN) >= [29, 24] || scn($SCENARIO_MAIN) >= [29, 23] || scn($SCENARIO_MAIN) >= [29, 22] || scn($SCENARIO_MAIN) >= [29, 21] || scn($SCENARIO_MAIN) >= [29, 20] || scn($SCENARIO_MAIN) >= [29, 19] || scn($SCENARIO_MAIN) >= [29, 18] || scn($SCENARIO_MAIN) >= [29, 17] || scn($SCENARIO_MAIN) >= [29, 16] || scn($SCENARIO_MAIN) >= [29, 15] || scn($SCENARIO_MAIN) >= [29, 14] || scn($SCENARIO_MAIN) >= [29, 13] || scn($SCENARIO_MAIN) >= [29, 12] || scn($SCENARIO_MAIN) >= [29, 11] || scn($SCENARIO_MAIN) >= [29, 10] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
        message_Talk({
            english=" What? What?\nDid something happen?",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 8] || scn($SCENARIO_MAIN) >= [29, 6] || scn($SCENARIO_MAIN) >= [29, 5] ) {
        jump @label_66;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 4] || scn($SCENARIO_MAIN) >= [29, 3] || scn($SCENARIO_MAIN) >= [29, 2] || scn($SCENARIO_MAIN) >= [29, 1] || scn($SCENARIO_MAIN) >= [25, 4] || scn($SCENARIO_MAIN) >= [25, 3] || scn($SCENARIO_MAIN) >= [25, 2] || scn($SCENARIO_MAIN) >= [25, 2] || scn($SCENARIO_MAIN) >= [25, 1] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Go for it, Team [team:]!",
        });
        message_Talk({
            english=" Take the Time Gears back to\n[CS:P]Temporal Tower[CR]!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [24, 1] || scn($SCENARIO_MAIN) >= [24, 1] || scn($SCENARIO_MAIN) >= [23, 3] || scn($SCENARIO_MAIN) >= [23, 2] || scn($SCENARIO_MAIN) >= [23, 1] || scn($SCENARIO_MAIN) >= [22, 3] || scn($SCENARIO_MAIN) >= [22, 2] || scn($SCENARIO_MAIN) >= [21, 2] || scn($SCENARIO_MAIN) >= [21, 1] || scn($SCENARIO_MAIN) >= [20, 4] || scn($SCENARIO_MAIN) >= [20, 3] || scn($SCENARIO_MAIN) >= [20, 2] || scn($SCENARIO_MAIN) >= [20, 1] || scn($SCENARIO_MAIN) >= [17, 3] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Doing nothing but waiting is\nfrustrating, but...[K]it\'s the great [CS:N]Dusknoir[CR]\'s call.",
        });
        message_Talk({
            english=" We have to trust him to do it.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [17, 1] || scn($SCENARIO_MAIN) >= [16, 2] || scn($SCENARIO_MAIN) >= [16, 0] || scn($SCENARIO_MAIN) >= [15, 4] || scn($SCENARIO_MAIN) >= [15, 1] || scn($SCENARIO_MAIN) >= [14, 5] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" [CS:N]Grovyle[CR], huh...?[K] Can\'t say I\'ve\nheard of him, to be honest.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [14, 4] || scn($SCENARIO_MAIN) >= [14, 2] || scn($SCENARIO_MAIN) >= [14, 1] || scn($SCENARIO_MAIN) >= [13, 2] || scn($SCENARIO_MAIN) >= [13, 1] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" I heard that the different kinds\nof [CS:I]Prize Tickets[CR] have something\nto do with your Explorer Rank...",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [12, 4] || scn($SCENARIO_MAIN) >= [12, 3] || scn($SCENARIO_MAIN) >= [12, 1] || scn($SCENARIO_MAIN) >= [10, 2] || scn($SCENARIO_MAIN) >= [10, 1] || scn($SCENARIO_MAIN) >= [9, 5] || scn($SCENARIO_MAIN) >= [9, 4] || scn($SCENARIO_MAIN) >= [9, 2] || scn($SCENARIO_MAIN) >= [9, 1] || scn($SCENARIO_MAIN) >= [8, 7] || scn($SCENARIO_MAIN) >= [8, 6] || scn($SCENARIO_MAIN) >= [8, 5] || scn($SCENARIO_MAIN) >= [8, 3] || scn($SCENARIO_MAIN) >= [8, 2] || scn($SCENARIO_MAIN) >= [8, 1] || scn($SCENARIO_MAIN) >= [7, 6] || scn($SCENARIO_MAIN) >= [7, 3] || scn($SCENARIO_MAIN) >= [7, 2] || scn($SCENARIO_MAIN) >= [7, 1] || scn($SCENARIO_MAIN) >= [6, 5] || scn($SCENARIO_MAIN) >= [6, 1] || scn($SCENARIO_MAIN) >= [5, 5] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_OOSUBAME) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
        message_Talk({
            english=" Hey, [CS:N]Wurmple[CR]!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_KEMUSSO) {
            SetAnimation(2);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Y-yes!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
        message_Talk({
            english=" The weather\'s good today.",
        });
        message_Talk({
            english=" On nice days like this...[K] I really\nwork up an appetite!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        se_Play(8968);
        with (actor ACTOR_NPC_KEMUSSO) {
            SetEffect(EFFECT_SHOCKED_MIRRORED, 3);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            WaitEffect();
        }
        WaitExecuteLives(ACTOR_NPC_KEMUSSO);
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Huh?[K] Really?![K] Eeep! Y-y-yeesh!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [4, 7] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_OOSUBAME) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        with (actor ACTOR_NPC_OOSUBAME) {
            Turn2DirectionLives(4, 10, ACTOR_PLAYER);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" What\'s that?[K] You want me to\nexplain how the Job Bulletin Board works?",
        });
        switch ( message_SwitchMenu(0, 1) ) {
            case menu({
                english="Yes",
            }):
            default:
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" Well, all right![K] Let me explain!",
                });
                message_Talk({
                    english=" First, you want to stand in front\nof the Job Bulletin Board, then press [M:B2].",
                });
                message_Talk({
                    english=" You can choose jobs you want to\ndo by using the Job Bulletin Board.",
                });
                message_Talk({
                    english=" You\'ll get a letter describing\neach job you choose. Those letters will show up\non your Job List in the menu.",
                });
                message_Talk({
                    english=" To actually start a job, you must\nuse the Take Job command in your Job List.[K]\nThen you can do the job in the dungeon!",
                });
                message_Talk({
                    english=" You must use Take Job before\nstarting a job. Or else you can\'t do it, even if\nyou go to the correct dungeon!",
                });
                message_Close();
                jump @label_130;
            case menu({
                english="No",
            }):
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" ...Oh. You\'re not interested...",
                });
                message_Talk({
                    english=" It\'s fun to do jobs, but...",
                });
                message_Talk({
                    english=" Incidentally...",
                });
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                with (actor ACTOR_NPC_OOSUBAME) {
                    Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
                }
                message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
                message_Talk({
                    english=" Hey, [CS:N]Wurmple[CR]!",
                });
                message_Talk({
                    english=" I was checking out the Job\nBulletin Board. I found a great job.",
                });
                message_Talk({
                    english=" It\'s an easy job, plus it\npays well.",
                });
                message_Talk({
                    english=" Sounds real tasty!",
                });
                CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
                with (actor ACTOR_NPC_KEMUSSO) {
                    SetAnimation(2);
                }
                se_Play(8968);
                with (actor ACTOR_NPC_KEMUSSO) {
                    SetEffect(EFFECT_SHOCKED_MIRRORED, 3);
                }
                with (actor ACTOR_NPC_KEMUSSO) {
                    WaitEffect();
                }
                WaitExecuteLives(ACTOR_NPC_KEMUSSO);
                message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
                message_Talk({
                    english=" T-t-tasty...?![K] S-s-sheesh...",
                });
                message_Close();
                jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [4, 5] || scn($SCENARIO_MAIN) >= [4, 3] || scn($SCENARIO_MAIN) >= [4, 2] || scn($SCENARIO_MAIN) >= [4, 1] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_OOSUBAME);
        }
        message_SetFace(ACTOR_NPC_OOSUBAME, FACE_NORMAL, FACE_POS_BOTTOM_R_FACEINW);
        message_Talk({
            english=" Our exploration team is called\nTeam [CS:X]Tasty[CR]!",
        });
        message_Talk({
            english=" That cool name was thought up\nby my partner [CS:N]Wurmple[CR] next to me!",
        });
        message_Talk({
            english=" What do you think? Cool name,\nam I right?!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [4, 0] || scn($SCENARIO_MAIN) >= [3, 1] ) {
        jump @label_130;
    } else {
        jump @label_130;
    }
}
