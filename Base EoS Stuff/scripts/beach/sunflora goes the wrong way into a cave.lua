
def 0 {
    message_SetFace(ACTOR_PLAYER_KIMAWARI, FACE_NORMAL, FACE_POS_STANDARD);
    message_Talk({
        english=" Huh?[K] It\'s not this way.",
    });
    message_Close();
    se_Play(8972);
    with (actor ACTOR_PLAYER_KIMAWARI) {
        SetEffect(EFFECT_SWEAT_DROPS_FROM_BOTH_SIDES_MEDIUM, 3);
    }
    with (actor ACTOR_PLAYER_KIMAWARI) {
        WaitEffect();
    }
    WaitExecuteLives(ACTOR_PLAYER_KIMAWARI);
    with (actor ACTOR_PLAYER_KIMAWARI) {
        Turn2Direction(4, 10, DIR_RIGHT);
    }
    WaitExecuteLives(ACTOR_PLAYER_KIMAWARI);
    message_SetFace(ACTOR_PLAYER_KIMAWARI, FACE_WORRIED, FACE_POS_STANDARD);
    message_Talk({
        english=" What in the world... [K]What am I\ndoing, anyway...",
    });
    message_Close();
    end;
}
