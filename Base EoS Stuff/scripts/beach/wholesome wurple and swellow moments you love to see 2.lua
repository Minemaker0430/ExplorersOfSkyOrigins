
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" I\'m ashamed that I doubted my\nleader even a little...",
        });
        message_Talk({
            english=" But I\'m glad I had the guts to.",
        });
        message_Talk({
            english=" You helped me be brave,\n[hero].",
        });
        message_Talk({
            english=" Thank you so much!",
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
        with (actor ACTOR_NPC_OOSUBAME) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            SetAnimation(2);
        }
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        WaitExecuteLives(ACTOR_PLAYER);
        with (actor ACTOR_NPC_KEMUSSO) {
            SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Eep...[K] Thank you, [CS:N]Swellow[CR]...\nYou are my one and only leader...",
        });
        message_Talk({
            english=" I\'m very...[K] So very h-h-happy...",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 54] || scn($SCENARIO_MAIN) >= [29, 53] || scn($SCENARIO_MAIN) >= [29, 52] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" ...[K]I see...[K] That little [CS:N]Manaphy[CR]\nhad to go back to the sea.",
        });
        message_Talk({
            english=" The way you feel about little\n[CS:N]Manaphy[CR], [hero]...[K] I feel your pain.",
        });
        message_Talk({
            english=" Well...[K][hero] and\n[partner]...",
        });
        message_Talk({
            english=" I\'ve decided.[K] I\'m going to work\nup my courage and ask my leader how he thinks\nof me.",
        });
        message_Talk({
            english=" I don\'t know if my leader only\nviews me as food...[K] But...",
        });
        message_Talk({
            english=" It makes no difference in how\nmuch I trust him as leader.",
        });
        message_Talk({
            english=" Thank you, [hero] and\n[partner].",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 50] || scn($SCENARIO_MAIN) >= [29, 49] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" You\'ve found [CS:N]Manaphy[CR]!\nHow splendid!",
        });
        message_Talk({
            english=" ...[K]Oh?[K] Oh no![K] The baby\'s taken\nsick now?",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 48] || scn($SCENARIO_MAIN) >= [29, 47] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Oh no![K] That cute [CS:N]Manaphy[CR]\'s\ngone missing?!",
        });
        message_Talk({
            english=" Th-that is worrisome...",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 46] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" What...what a little cutie...",
        });
        message_Talk({
            english=" [CS:N]Manaphy[CR] is his name? Such a\ncute little fellow.",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 45] || scn($SCENARIO_MAIN) >= [29, 44] || scn($SCENARIO_MAIN) >= [29, 43] || scn($SCENARIO_MAIN) >= [29, 42] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Eep! I can\'t decide what to do...",
        });
        message_Talk({
            english=" Our team leader, [CS:N]Swellow[CR]...[K]\nDo you suppose he thinks of me as food?",
        });
        message_Talk({
            english=" I want to believe in my leader,\nbut...[K] Y-y-yeesh...",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 41] || scn($SCENARIO_MAIN) >= [29, 40] || scn($SCENARIO_MAIN) >= [29, 39] || scn($SCENARIO_MAIN) >= [29, 33] || scn($SCENARIO_MAIN) >= [29, 32] || scn($SCENARIO_MAIN) >= [29, 31] ) {
        §label_66;
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        WaitExecuteLives(ACTOR_NPC_KEMUSSO);
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Eep! Y-y-yeesh...",
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Huh? Why is it so empty\nin here?",
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Good luck! And please\nbe careful!",
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" If the great [CS:N]Dusknoir[CR] and\n[CS:N]Grovyle[CR] were to fight...[K]I would think the battle\nwould be a high-level one.",
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" We want to help too.",
        });
        message_Talk({
            english=" If we hear anything about\n[CS:N]Grovyle[CR], we\'ll let you know.",
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Did you know that there are\ndifferent kinds of [CS:I]Prize Tickets[CR]?",
        });
        message_Talk({
            english=" It seems that you can win\ndifferent prizes with different tickets.",
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
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
            english=" Y-yes?",
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
        with (actor ACTOR_TALK_MAIN) {
            ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
        }
        with (actor ACTOR_TALK_SUB) {
            ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" The jobs on the boards range\nfrom easy to difficult.",
        });
        message_Talk({
            english=" The easiest jobs are marked\nwith the letter \"E.\"",
        });
        message_Talk({
            english=" The jobs get progressively\ndifficult from \"[CS:I]D[CR:0]\" to \"[CS:K]C[CR:0]\" and so on.",
        });
        message_Talk({
            english=" If you\'re just starting out and\nyou\'re unsure of your skills, you should start\nwith the easiest jobs rated \"E.\"",
        });
        message_Talk({
            english=" Pardon?[K] Me?",
        });
        message_Talk({
            english=" I\'d never choose a hard job rated\n\"[CS:K]C[CR:0]\" or anything like that![K] Y-y-yeesh!",
        });
        message_Close();
        jump @label_130;
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_KEMUSSO);
        }
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Excuse me? Why did I pick the\nname Team [CS:X]Tasty[CR]?",
        });
        message_Talk({
            english=" Well...[K] Er, um...",
        });
        message_Close();
        with (actor ACTOR_NPC_KEMUSSO) {
            Turn2DirectionLives(8, 10, ACTOR_NPC_OOSUBAME);
        }
        WaitExecuteLives(ACTOR_NPC_KEMUSSO);
        Wait(20);
        with (actor ACTOR_NPC_KEMUSSO) {
            Turn2DirectionLives(4, 10, ACTOR_PLAYER);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            WaitEffect();
        }
        WaitExecuteLives(ACTOR_NPC_KEMUSSO);
        se_Play(8972);
        with (actor ACTOR_NPC_KEMUSSO) {
            SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
        }
        with (actor ACTOR_NPC_KEMUSSO) {
            WaitEffect();
        }
        WaitExecuteLives(ACTOR_NPC_KEMUSSO);
        message_SetFace(ACTOR_NPC_KEMUSSO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" I think that\'s how my partner\nwill think of me eventually...[K] Y-y-yeesh...",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [4, 0] || scn($SCENARIO_MAIN) >= [3, 1] ) {
        jump @label_130;
    } else {
        jump @label_130;
    }
}
