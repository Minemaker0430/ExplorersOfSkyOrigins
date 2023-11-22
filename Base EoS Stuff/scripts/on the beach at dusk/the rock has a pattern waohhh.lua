
def 0 {
    back2_SetMode(4);
    back2_SetGround(LEVEL_V01P03B);
    back_SetGround(LEVEL_D01P11B);
    supervision_Acting(0);
    camera2_SetPositionMark(Position<'m0', 33, 9.5>);
    with (performer 0) {
        camera_SetMyself();
    }
    screen2_FlushOut(1, 0, 8, 0, 0, 0);
    screen_FlushOut(1, 0, 8, 0, 0, 0);
    screen2_FadeIn(0, 30);
    screen_FadeIn(1, 30);
    message_SetFace(ACTOR_ATTENDANT1, FACE_NORMAL, FACE_POS_STANDARD);
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
    message_Close();
    screen2_FadeOut(0, 30);
    screen_FadeOut(1, 30);
    back2_SetMode(0);
    screen2_FlushIn(1, 0, 1, 0, 0, 0);
    screen_FlushIn(1, 0, 1, 0, 0, 0);
    end;
}
