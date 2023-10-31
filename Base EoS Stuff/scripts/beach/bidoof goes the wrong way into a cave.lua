
def 0 {
    message_SetFace(ACTOR_PLAYER_BIPPA, FACE_NORMAL, FACE_POS_BOTTOM_L_FACEOUTW);
    message_Talk({
        english=" N-nope...[K] Not this way.",
    });
    CallCommon(CORO_MESSAGE_CLOSE_WAIT_FUNC);
    with (actor ACTOR_PLAYER_BIPPA) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_PLAYER_BIPPA);
    se_Play(8972);
    with (actor ACTOR_PLAYER_BIPPA) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_PLAYER_BIPPA) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_PLAYER_BIPPA);
    message_SetFace(ACTOR_PLAYER_BIPPA, FACE_SAD, FACE_POS_STANDARD);
    message_Talk({
        english=" Sniff...[K] I always seem to space\nout and daydream...",
    });
    message_Talk({
        english=" And then, before I know it, I\nfind myself in a very strange place...",
    });
    message_Talk({
        english=" It\'s not good, not at all.[K] Golly, I\nreally should be careful, yup yup.",
    });
    message_Close();
    end;
}
