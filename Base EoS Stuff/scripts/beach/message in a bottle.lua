
def 0 {
    with (actor ACTOR_ATTENDANT1) {
        SetAnimation(2);
    }
    with (actor ACTOR_PLAYER) {
        SetAnimation(2);
    }
    with (actor ACTOR_PLAYER) {
        Turn2DirectionMark(4, 10, Position<'m0', 33.5, 20.5>, 1, 1);
    }
    with (actor ACTOR_ATTENDANT1) {
        Turn2DirectionMark(4, 10, Position<'m1', 33.5, 20.5>, 1, 1);
    }
    switch ( ProcessSpecial(PROCESS_SPECIAL_INIT_RANDOM_NPC_JOBS, 1, 0) ) { }
    switch ( ProcessSpecial(PROCESS_SPECIAL_GET_RANDOM_NPC_JOB_STILL_AVAILABLE, 0, 0) ) { }
    message_Mail({
        english="[CN]There\'s a Bottle here.",
    });
    message_Mail({
        english="[CN]Huh?[K] It looks like there\'s something inside.\n[CN]Would you like to try and take it out?",
    });
    switch ( message_SwitchMenu(1, 1) ) {
        case menu({
            english="Yes",
        }):
            §label_0;
            message_Close();
            back2_SetMode(7);
            WaitSubScreen();
            switch ( ProcessSpecial(PROCESS_SPECIAL_GET_RANDOM_NPC_JOB_TYPE, 0, 0) ) {
                case 12:
                    §label_2;
                    message_Mail({
                        english="[CN]There was a Treasure Memo inside!\n[CN]Would you like to add it to your Job List?",
                    });
                    switch ( message_SwitchMenu(0, 1) ) {
                        case menu({
                            english="Yes",
                        }):
                        default:
                            §label_3;
                            message_Close();
                            back2_SetMode(32767);
                            WaitSubScreen();
                            Wait(20);
                            switch ( ProcessSpecial(PROCESS_SPECIAL_ACCEPT_RANDOM_NPC_JOB, 0, 0) ) {
                                case 1:
                                    switch ( ProcessSpecial(PROCESS_SPECIAL_GET_RANDOM_NPC_JOB_TYPE, 0, 0) ) {
                                        case 12:
                                            $SCENARIO_MAIN_BIT_FLAG[92] = 0;
                                            supervision_RemoveCommon(5);
                                            message_Mail({
                                                english="[CN]The Treasure Memo was added\n[CN]to your Job List.",
                                            });
                                            message_Close();
                                            §label_7;
                                            JumpCommon(CORO_END_TALK);
                                        default:
                                            $SCENARIO_MAIN_BIT_FLAG[92] = 0;
                                            supervision_RemoveCommon(5);
                                            message_Mail({
                                                english="[CN]The job was added\n[CN]to your Job List.",
                                            });
                                            message_Close();
                                            jump @label_7;
                                    }
                                    break;
                                default:
                                    message_Mail({
                                        english="[CN]Your Job List is full,\n[CN]so you cannot add to it.",
                                    });
                                    message_Close();
                                    jump @label_7;
                            }
                            break;
                        case menu({
                            english="No",
                        }):
                            §label_1;
                            message_Close();
                            back2_SetMode(32767);
                            WaitSubScreen();
                            Wait(20);
                            jump @label_7;
                    }
                    break;
                default:
                    message_Mail({
                        english="[CN]There was a Job Letter inside!\n[CN]Add it to your Job List?",
                    });
                    switch ( message_SwitchMenu(0, 1) ) {
                        case menu({
                            english="Yes",
                        }):
                            jump @label_3;
                        case menu({
                            english="No",
                        }):
                            jump @label_1;
                        default:
                            jump @label_2;
                    }
                    break;
            }
            break;
        case menu({
            english="No",
        }):
            jump @label_1;
        default:
            jump @label_1;
    }
}
