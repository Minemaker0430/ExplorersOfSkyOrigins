
def 0 {
    if ( scn($SCENARIO_MAIN) >= [29, 94] ) {
        §label_0;
        with (actor ACTOR_TALK_MAIN) {
            ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
        }
        with (actor ACTOR_TALK_SUB) {
            ExecuteCommon(CORO_LIVES_REPLY_NORMAL, 0);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        se_Play(8972);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Gwah![K] Gwargh![K] Gwagagah!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2DirectionLives(4, 10, ACTOR_PLAYER);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        Wait(10);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" We thought we were a goner!",
        });
        message_Talk({
            english=" While training here...[K]the waves\ncarried us off!",
        });
        message_Talk({
            english=" For months, we drifted on the\nwaves, cut off from all contact...",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        message_Talk({
            english=" ...In all truth, that is really an\nexaggeration.[K] We were merely splashed by\nwaves on the shore...",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_ERUREIDO);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        message_Talk({
            english=" While we floundered...[K]we were\nthankfully rescued by these kindly strangers.",
        });
        message_Close();
        §label_130;
        JumpCommon(CORO_END_TALK);
    } elseif ( scn($SCENARIO_MAIN) >= [29, 93] || scn($SCENARIO_MAIN) >= [29, 92] || scn($SCENARIO_MAIN) >= [29, 91] || scn($SCENARIO_MAIN) >= [29, 90] || scn($SCENARIO_MAIN) >= [29, 89] || scn($SCENARIO_MAIN) >= [29, 88] || scn($SCENARIO_MAIN) >= [29, 87] || scn($SCENARIO_MAIN) >= [29, 85] || scn($SCENARIO_MAIN) >= [29, 84] || scn($SCENARIO_MAIN) >= [29, 83] || scn($SCENARIO_MAIN) >= [29, 82] || scn($SCENARIO_MAIN) >= [29, 81] || scn($SCENARIO_MAIN) >= [29, 80] || scn($SCENARIO_MAIN) >= [29, 78] || scn($SCENARIO_MAIN) >= [29, 76] || scn($SCENARIO_MAIN) >= [29, 75] || scn($SCENARIO_MAIN) >= [29, 73] || scn($SCENARIO_MAIN) >= [29, 72] || scn($SCENARIO_MAIN) >= [29, 71] || scn($SCENARIO_MAIN) >= [29, 70] || scn($SCENARIO_MAIN) >= [29, 69] || scn($SCENARIO_MAIN) >= [29, 67] || scn($SCENARIO_MAIN) >= [29, 56] || scn($SCENARIO_MAIN) >= [29, 55] || scn($SCENARIO_MAIN) >= [29, 54] || scn($SCENARIO_MAIN) >= [29, 53] || scn($SCENARIO_MAIN) >= [29, 52] || scn($SCENARIO_MAIN) >= [29, 50] || scn($SCENARIO_MAIN) >= [29, 49] || scn($SCENARIO_MAIN) >= [29, 48] || scn($SCENARIO_MAIN) >= [29, 47] || scn($SCENARIO_MAIN) >= [29, 46] || scn($SCENARIO_MAIN) >= [29, 45] || scn($SCENARIO_MAIN) >= [29, 44] || scn($SCENARIO_MAIN) >= [29, 43] || scn($SCENARIO_MAIN) >= [29, 42] || scn($SCENARIO_MAIN) >= [29, 41] || scn($SCENARIO_MAIN) >= [29, 40] || scn($SCENARIO_MAIN) >= [29, 39] || scn($SCENARIO_MAIN) >= [29, 33] || scn($SCENARIO_MAIN) >= [29, 32] || scn($SCENARIO_MAIN) >= [29, 31] || scn($SCENARIO_MAIN) >= [29, 30] || scn($SCENARIO_MAIN) >= [29, 29] || scn($SCENARIO_MAIN) >= [29, 28] || scn($SCENARIO_MAIN) >= [29, 27] || scn($SCENARIO_MAIN) >= [29, 26] || scn($SCENARIO_MAIN) >= [29, 25] || scn($SCENARIO_MAIN) >= [29, 24] || scn($SCENARIO_MAIN) >= [29, 23] || scn($SCENARIO_MAIN) >= [29, 22] || scn($SCENARIO_MAIN) >= [29, 21] || scn($SCENARIO_MAIN) >= [29, 20] || scn($SCENARIO_MAIN) >= [29, 19] || scn($SCENARIO_MAIN) >= [29, 18] || scn($SCENARIO_MAIN) >= [29, 17] || scn($SCENARIO_MAIN) >= [29, 16] || scn($SCENARIO_MAIN) >= [29, 15] || scn($SCENARIO_MAIN) >= [29, 14] || scn($SCENARIO_MAIN) >= [29, 13] || scn($SCENARIO_MAIN) >= [29, 12] || scn($SCENARIO_MAIN) >= [29, 11] || scn($SCENARIO_MAIN) >= [29, 10] || scn($SCENARIO_MAIN) >= [29, 8] || scn($SCENARIO_MAIN) >= [29, 6] || scn($SCENARIO_MAIN) >= [29, 5] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" We are testing to see how close\nwe can get to the sea.",
        });
        message_Talk({
            english=" We are weak against water.[K]\nBut we seek to overcome that shortcoming!",
        });
        message_Talk({
            english=" That will shape us into a hero!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2Direction(4, 10, DIR_UP);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea! Come![K] We dare you!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_JOYOUS, 3);
        }
        message_Talk({
            english=" O sea, hear me! Teach me!",
        });
        message_Close();
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_NONE, 3);
        }
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 4] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" .....................",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [29, 3] || scn($SCENARIO_MAIN) >= [29, 2] || scn($SCENARIO_MAIN) >= [29, 1] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" What?![K] Do I know the grand\nmaster of all things bad?!",
        });
        message_Talk({
            english=" Of course![K] You think that we\nare ignorant of such things?!",
        });
        message_Talk({
            english=" ...[K]What?[K] You wish to know\nwhat we know?",
        });
        message_Talk({
            english=" Before the graduation exam?[K]\nWe should tell you that, of all things?!",
        });
        message_KeyWait();
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(9);
        }
        se_Play(8971);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_ANGRY, 3);
        }
        message_Talk({
            english=" Nooooooo!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_NONE, 3);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        se_Play(8972);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            WaitEffect();
        }
        message_Talk({
            english=" ...[K]Gasp-gasp...",
        });
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [25, 4] || scn($SCENARIO_MAIN) >= [25, 3] || scn($SCENARIO_MAIN) >= [25, 2] || scn($SCENARIO_MAIN) >= [25, 2] || scn($SCENARIO_MAIN) >= [25, 1] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" You have our support too!",
        });
        message_Talk({
            english=" O sea! You too!",
        });
        message_Close();
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2Direction(4, 10, DIR_LEFT);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        Wait(20);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea![K] You agree!",
        });
        message_Talk({
            english=" You offer encouragement too!",
        });
        message_Close();
        Wait(60);
        message_Mail({
            english="[CN]SPLAAAASH...",
        });
        message_KeyWait();
        se_Play(6675);
        message_Mail({
            english="[CN]SPLOOOOSH...",
        });
        WaitSe(6675);
        message_Close();
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2DirectionLives(4, 10, ACTOR_PLAYER);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        Wait(30);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" See?![K] Now do your best!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [24, 1] || scn($SCENARIO_MAIN) >= [24, 1] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Wrooooah![K] We failed to get\nthrough the dungeon! It is a travesty!",
        });
        message_Talk({
            english=" It must have been a mistake of\nsome sort!",
        });
        message_Talk({
            english=" We are off once again![K]\nThis time, we won\'t fail!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [23, 3] || scn($SCENARIO_MAIN) >= [23, 2] || scn($SCENARIO_MAIN) >= [23, 1] || scn($SCENARIO_MAIN) >= [22, 3] || scn($SCENARIO_MAIN) >= [22, 2] || scn($SCENARIO_MAIN) >= [21, 2] || scn($SCENARIO_MAIN) >= [21, 1] || scn($SCENARIO_MAIN) >= [20, 4] || scn($SCENARIO_MAIN) >= [20, 3] || scn($SCENARIO_MAIN) >= [20, 2] || scn($SCENARIO_MAIN) >= [20, 1] ) {
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [17, 3] ) {
        $SCENARIO_TALK_BIT_FLAG[24] = 1;
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        supervision_ExecuteCommon(CORO_EVENT_M00_04);
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [17, 1] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea![K] Hear us!",
        });
        message_Talk({
            english=" Our journey has been delayed![K]\nAnd our effort to capture [CS:N]Grovyle[CR] has also\nbeen postponed!",
        });
        message_Talk({
            english=" In all truth, \"postponed\" isn\'t the\nright word for the latter.[K] The great [CS:N]Dusknoir[CR]\nwill handle the capture by himself.",
        });
        message_Talk({
            english=" It\'s a little difficult, but\nunderstand us![K] O sea!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [16, 2] || scn($SCENARIO_MAIN) >= [16, 0] || scn($SCENARIO_MAIN) >= [15, 4] || scn($SCENARIO_MAIN) >= [15, 1] || scn($SCENARIO_MAIN) >= [14, 5] || scn($SCENARIO_MAIN) >= [14, 4] || scn($SCENARIO_MAIN) >= [14, 2] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea![K] Hear us!",
        });
        message_Talk({
            english=" We must postpone our journey!",
        });
        message_Talk({
            english=" We must participate in the\ncapture of [CS:N]Grovyle[CR]!",
        });
        message_Talk({
            english=" We will...[K] We will capture\n[CS:N]Grovyle[CR] without fail!",
        });
        message_Talk({
            english=" Though it is frightening...[K]\nWe will do our best!",
        });
        message_Talk({
            english=" We need encouragement![K]\nO vaaaast sea!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [14, 1] || scn($SCENARIO_MAIN) >= [13, 2] || scn($SCENARIO_MAIN) >= [13, 1] ) {
        $SCENARIO_TALK_BIT_FLAG[23] = 1;
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea![K] Hear us!",
        });
        message_Talk({
            english=" We have given a topic much\nthought![K] How we can reach the great\n[CS:N]Dusknoir[CR]\'s lofty standards?",
        });
        message_Talk({
            english=" And...[K]after soul-searching...",
        });
        message_Talk({
            english=" arrived at a single conclusion!",
        });
        message_Talk({
            english=" We will...[K]leave the guild to go\non a journey!",
        });
        message_Talk({
            english=" We wish to travel the world\nand experience what it has to offer!",
        });
        message_Talk({
            english=" On a path of self-discovery![K]\nWait! Do I mean paths of self-discovery?[K]\nOr a path of self-discoveries?",
        });
        message_Talk({
            english=" O sea! What say you?![K]\nGive us your reply!",
        });
        message_Talk({
            english=" Answer us![K]\nO vaaaast sea!",
        });
        message_Close();
        Wait(60);
        message_Mail({
            english="[CN]SPLAAAASH...",
        });
        message_Mail({
            english="[CN]SPLOOOOSH...",
        });
        message_KeyWait();
        se_Play(6675);
        message_Mail({
            english="[CN]SPLOOOOSH...SPLAAAASH!",
        });
        WaitSe(6675);
        message_Close();
        se_Play(8978);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_EXCLAMATION_MARK, 3);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            WaitEffect();
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea![K] You will allow it!",
        });
        message_Talk({
            english=" Th-thank you, great sea!",
        });
        message_Close();
        Wait(20);
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2DirectionLives(4, 10, ACTOR_PLAYER);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        Wait(30);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" ...And that\'s the way of it.",
        });
        message_Talk({
            english=" We will leave on our\njourney soon.",
        });
        message_Talk({
            english=" I trust you will pick up the slack\nin our absence.",
        });
        message_Close();
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2Direction(4, 10, DIR_LEFT);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        Wait(20);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" We must return to the guild and\nprepare for our journey!",
        });
        message_Close();
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2DirectionLives(4, 10, ACTOR_PLAYER);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Farewell!",
        });
        message_Close();
        Wait(10);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetDirection(DIR_DOWN);
        }
        se_Play(6422);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(25);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            WaitAnimation();
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            Destroy();
        }
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [12, 4] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea![K] Hear us!",
        });
        message_Talk({
            english=" We have met a Pokémon that\ninspires us deeply!",
        });
        message_Talk({
            english=" A great Pokémon that goes by\nthe name of [CS:N]Dusknoir[CR]!",
        });
        message_Talk({
            english=" O sea! The world is huge![K]\nAnd there are Pokémon beyond number!",
        });
        message_Talk({
            english=" Our meager knowledge and\nexperience is no match for the great\n[CS:N]Dusknoir[CR]\'s...[K] However...!",
        });
        message_Talk({
            english=" We will...[K]one day...[K]be like him...",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(9);
        }
        message_Talk({
            english=" Woooaaah!",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        se_Play(8972);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            WaitEffect();
        }
        message_Talk({
            english=" ...[K]Gasp-gasp...",
        });
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [12, 3] || scn($SCENARIO_MAIN) >= [12, 1] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea![K] We have returned!",
        });
        message_Talk({
            english=" We have returned from the\nexpedition! We have learned and grown!",
        });
        message_Talk({
            english=" How we have grown...[K] Bear\nwitness to it!",
        });
        message_KeyWait();
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_JOYOUS, 3);
        }
        message_Talk({
            english=" O sea![K] O sea!!![K]\nO vaaaast sea!",
        });
        message_KeyWait();
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_NONE, 3);
        }
        message_Talk({
            english=" ...[K]Gasp-gasp...",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [10, 2] || scn($SCENARIO_MAIN) >= [10, 1] || scn($SCENARIO_MAIN) >= [9, 5] || scn($SCENARIO_MAIN) >= [9, 4] || scn($SCENARIO_MAIN) >= [9, 2] || scn($SCENARIO_MAIN) >= [9, 1] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" O sea![K] We\'ve come to bid you\na brief farewell!",
        });
        message_Talk({
            english=" We have been chosen for the\nexpedition! (Though that was a given.)",
        });
        message_Talk({
            english=" We therefore must take leave\nof this place for a short while!",
        });
        message_Talk({
            english=" However...[K] When we return...",
        });
        message_Talk({
            english=" You will see that we have grown\nin every way!",
        });
        message_Talk({
            english=" Look forward to that day!",
        });
        message_KeyWait();
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_JOYOUS, 3);
        }
        message_Talk({
            english=" O sea![K] O sea!!![K]\nO vaaaast sea!",
        });
        message_KeyWait();
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_NONE, 3);
        }
        message_Talk({
            english=" ...[K]Gasp-gasp...",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [8, 7] || scn($SCENARIO_MAIN) >= [8, 6] || scn($SCENARIO_MAIN) >= [8, 5] || scn($SCENARIO_MAIN) >= [8, 3] ) {
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
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" ...[K]The expedition is coming up\nquickly.",
        });
        message_Talk({
            english=" It would be nice to see you two\nchosen as members too.",
        });
        CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
        se_Play(8962);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_QUESTION_MARK, 3);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            WaitEffect();
        }
        message_Talk({
            english=" ...[K]Oh?[K] As for us?",
        });
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        message_KeyWait();
        message_Talk({
            english=" It goes without saying that we\'ll\nbe among the chosen!",
        });
        message_KeyWait();
        se_Play(8971);
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_ANGRY, 3);
        }
        message_Talk({
            english=" What...[K] What do you take us\nfor? Grr-rumble...",
        });
        message_Talk({
            english=" How very insulting of you![K]\nGrrr-rumble...",
        });
        message_Close();
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetEffect(EFFECT_NONE, 3);
        }
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [8, 2] || scn($SCENARIO_MAIN) >= [8, 1] ) {
        if ( $SCENARIO_TALK_BIT_FLAG[26] ) {
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
                Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
            }
            message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
            message_Talk({
                english=" Oh, for crying out loud...[K] I wish\nyou hadn\'t seen that.",
            });
            message_Talk({
                english=" Raising a child is the hardest\nthing I\'ve ever done...[K] Aha-ha-ha...",
            });
            message_Talk({
                english=" But I\'d like to imagine that my\nson will one day understand.",
            });
            message_Talk({
                english=" The way that we have chosen\nto live...",
            });
            message_Close();
            Wait(10);
            with (actor ACTOR_NPC_DAGUTORIO) {
                Turn2Direction(4, 10, DIR_LEFT);
            }
            WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
            jump @label_130;
        } else {
            $SCENARIO_TALK_BIT_FLAG[26] = 1;
            with (actor ACTOR_PLAYER) {
                SetAnimation(2);
            }
            with (actor ACTOR_NPC_DAGUTORIO) {
                SetAnimation(2);
            }
            with (actor ACTOR_NPC_DIGUDA) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                SetAnimation(2);
            }
            with (actor ACTOR_ATTENDANT1) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
            }
            message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_TOP_LC_FACEOUTW);
            message_Talk({
                english=" My son.",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            with (actor ACTOR_NPC_DIGUDA) {
                Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
            }
            WaitExecuteLives(ACTOR_NPC_DIGUDA);
            message_SetFace(ACTOR_NPC_DIGUDA, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
            message_Talk({
                english=" Yes, Dad?",
            });
            message_Talk({
                english=" Why did you call me out here?",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_TOP_LC_FACEOUTW);
            message_Talk({
                english=" See?[K] The sea is vast.",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            se_Play(8962);
            with (actor ACTOR_NPC_DIGUDA) {
                SetEffect(EFFECT_QUESTION_MARK, 3);
            }
            with (actor ACTOR_NPC_DIGUDA) {
                WaitEffect();
            }
            WaitExecuteLives(ACTOR_NPC_DIGUDA);
            message_SetFace(ACTOR_NPC_DIGUDA, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
            message_Talk({
                english=" Um, yes... But why are you\ntelling me this?",
            });
            message_Talk({
                english=" I\'m supposed to be working, Dad.",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            se_Play(8972);
            with (actor ACTOR_NPC_DIGUDA) {
                SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
            }
            with (actor ACTOR_NPC_DIGUDA) {
                WaitEffect();
            }
            WaitExecuteLives(ACTOR_NPC_DIGUDA);
            message_Talk({
                english=" If I don\'t go back soon, I\'ll get\nan earful from [CS:N]Loudred[CR].",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_TOP_LC_FACEOUTW);
            message_Talk({
                english=" You\'ll be scolded?",
            });
            message_Talk({
                english=" Why let such a paltry matter\ncloud your thoughts?",
            });
            message_Talk({
                english=" Broaden your perspective...[K]\nLike the sea before you.",
            });
            CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
            se_Play(8972);
            with (actor ACTOR_NPC_DIGUDA) {
                SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
            }
            with (actor ACTOR_NPC_DIGUDA) {
                WaitEffect();
            }
            WaitExecuteLives(ACTOR_NPC_DIGUDA);
            message_SetFace(ACTOR_NPC_DIGUDA, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEINW);
            message_Talk({
                english=" I don\'t know what that means!",
            });
            message_Talk({
                english=" I\'m going back to the guild.[K]\nI want to be chosen for the expedition.",
            });
            message_Talk({
                english=" Dad, you should quit wasting\ntime here and get back to work.[K] See you.",
            });
            message_Close();
            with (actor ACTOR_NPC_DIGUDA) {
                SetDirection(DIR_UP);
            }
            se_Play(6422);
            with (actor ACTOR_NPC_DIGUDA) {
                SetAnimation(24);
            }
            with (actor ACTOR_NPC_DIGUDA) {
                WaitAnimation();
            }
            with (actor ACTOR_NPC_DIGUDA) {
                Destroy();
            }
            jump @label_130;
        }
    } elseif ( scn($SCENARIO_MAIN) >= [7, 6] || scn($SCENARIO_MAIN) >= [7, 3] || scn($SCENARIO_MAIN) >= [7, 2] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" ...",
        });
        message_Talk({
            english=" ......",
        });
        message_Talk({
            english=" .........",
        });
        message_Talk({
            english=" Ah, you ask why we are here\nall the time...?[K] It is because...",
        });
        message_Talk({
            english=" We learn much from the sea.\nTo be deep and expansive.",
        });
        message_Close();
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2DirectionLives(4, 10, ACTOR_PLAYER);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        Wait(10);
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_STANDARD);
        message_Talk({
            english=" Don\'t think that we\'re shirking\nour work. That isn\'t our intention!",
        });
        message_Talk({
            english=" We insist that you understand\nus clearly on that point!",
        });
        message_Talk({
            english=" O sea, hear me!",
        });
        message_Talk({
            english=" O sea, teach me!",
        });
        message_Talk({
            english=" O sea, understand me!",
        });
        message_Close();
        with (actor ACTOR_NPC_DAGUTORIO) {
            Turn2Direction(4, 10, DIR_LEFT);
        }
        WaitExecuteLives(ACTOR_NPC_DAGUTORIO);
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [7, 1] || scn($SCENARIO_MAIN) >= [6, 5] || scn($SCENARIO_MAIN) >= [6, 1] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" ...",
        });
        message_Talk({
            english=" ...[K]The sea...[K]is so vast...",
        });
        message_Talk({
            english=" We wish that we were like the\nsea before us.",
        });
        message_Talk({
            english=" Expansive. Deep of heart.",
        });
        message_Talk({
            english=" O sea, hear me!",
        });
        message_Talk({
            english=" O sea, teach me!",
        });
        message_Talk({
            english=" O sea, understand me!",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [5, 5] || scn($SCENARIO_MAIN) >= [4, 7] ) {
        with (actor ACTOR_PLAYER) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            SetAnimation(2);
        }
        with (actor ACTOR_NPC_DAGUTORIO) {
            SetAnimation(2);
        }
        with (actor ACTOR_ATTENDANT1) {
            Turn2DirectionLives(4, 10, ACTOR_NPC_DAGUTORIO);
        }
        message_SetFace(ACTOR_NPC_DAGUTORIO, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
        message_Talk({
            english=" ...",
        });
        message_Talk({
            english=" ......",
        });
        message_Talk({
            english=" .........",
        });
        message_Talk({
            english=" ...[K]The sea...[K]is so vast...",
        });
        message_Talk({
            english=" ..................................................\n....................................................................\n....................................................................",
        });
        message_Close();
        jump @label_130;
    } elseif ( scn($SCENARIO_MAIN) >= [4, 5] || scn($SCENARIO_MAIN) >= [4, 3] || scn($SCENARIO_MAIN) >= [4, 2] || scn($SCENARIO_MAIN) >= [4, 1] || scn($SCENARIO_MAIN) >= [4, 0] || scn($SCENARIO_MAIN) >= [3, 1] ) {
        jump @label_130;
    } else {
        jump @label_130;
    }
}
