
def 0 {
    sound_Stop();
    back_SetGround(LEVEL_D01P11A);
    switch ( scn($SCENARIO_MAIN)[0] ) {
        case == 25:
        default:
            §label_0;
            supervision_LoadStation(LEVEL_D01P11A, 'UM24');
            supervision_Station(8);
            §label_2;
            supervision_Acting(0);
            with (performer 0) {
                camera_SetMyself();
            }
            with (actor ACTOR_NPC_JUPUTORU) {
                SetAnimation(2);
            }
            with (actor ACTOR_NPC_RAPURASU) {
                SetAnimation(2);
            }
            bgm_PlayFadeIn(BGM_OCEAN1, 90, 256);
            screen_FadeIn(1, 30);
            Wait(30);
            message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Hurry! We have to go to the\n[CS:P]Hidden Land[CR]!",
                    }
                case 2:
                    {
                        english=" Hurry! We have to go to the\n[CS:P]Hidden Land[CR]!",
                    }
                default:
                    {
                        english=" Hurry! We have to go to the\n[CS:P]Hidden Land[CR]!",
                    }
            }
            message_SwitchTalk ($PARTNER_TALK_KIND) {
                case 1:
                    {
                        english=" Let\'s move when you\'re ready,\n[hero]!",
                    }
                case 2:
                    {
                        english=" Let\'s go when you\'re ready,\n[hero]!",
                    }
                default:
                    {
                        english=" Let\'s go when you\'re ready,\n[hero]!",
                    }
            }
            message_Close();
            end;
        case == 26:
            supervision_LoadStation(LEVEL_D01P11A, 'UM25');
            supervision_Station(8);
            jump @label_2;
    }
}
