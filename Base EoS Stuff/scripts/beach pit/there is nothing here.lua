
def 0 {
    sound_Stop();
    back_SetDungeonBanner(2, 0);
    screen_FadeIn(1, 16);
    Wait(60);
    screen_FadeOut(1, 16);
    Wait(15);
    back_SetGround(LEVEL_D01P41A);
    if ( $PERFORMANCE_PROGRESS_LIST[7] ) {
        §label_0;
        supervision_Acting(1);
        with (performer 0) {
            camera_SetMyself();
        }
        screen_FadeIn(1, 30);
        bgm_PlayFadeIn(BGM_IN_THE_DEPTHS_OF_THE_PIT, 0, 256);
        with (actor ACTOR_PLAYER_APPOINT) {
            MovePositionMark(1, Position<'m4', 28.5, 20.5>);
        }
        with (actor ACTOR_ADVENTURE_NPC1) {
            MovePositionMark(1, Position<'m5', 31.5, 22.5>);
        }
        with (actor ACTOR_ADVENTURE_NPC2) {
            MovePositionMark(1, Position<'m6', 25.5, 22.5>);
        }
        with (actor ACTOR_ADVENTURE_NPC3) {
            MovePositionMark(1, Position<'m7', 28.5, 24.5>);
        }
        WaitExecuteLives(ACTOR_PLAYER_APPOINT);
        Wait(15);
        with (actor ACTOR_PLAYER_APPOINT) {
            ExecuteCommon(CORO_LOOK_AROUND_FUNC_SERIES, 0);
        }
        Wait(12);
        with (actor ACTOR_ADVENTURE_NPC1) {
            ExecuteCommon(CORO_LOOK_AROUND_LEFT_FUNC_SERIES, 0);
        }
        Wait(4);
        with (actor ACTOR_ADVENTURE_NPC2) {
            ExecuteCommon(CORO_LOOK_AROUND_DOWN_FUNC_SERIES, 0);
        }
        Wait(7);
        with (actor ACTOR_ADVENTURE_NPC3) {
            ExecuteCommon(CORO_LOOK_AROUND_RIGHT_FUNC_SERIES, 0);
        }
        WaitExecuteLives(ACTOR_PLAYER_APPOINT);
        Wait(15);
        §label_1;
        message_Mail({
            english="[CN]This appears to be the end of the dungeon.",
        });
        message_Mail({
            english="[CN]It\'s impossible to go any farther.[K]\n[CN]It\'s time to go back.",
        });
        message_Close();
        bgm_FadeOut(120);
        screen_FadeOut(1, 60);
        WaitBgm(BGM_IN_THE_DEPTHS_OF_THE_PIT);
        message_Explanation({
            english="[CN][player] cleared the\n[CN][CS:P]Beach Cave[CR]! Impressive!",
        });
        message_Close();
        end;
    } else {
        supervision_Acting(0);
        with (performer 0) {
            camera_SetMyself();
        }
        screen_FadeIn(1, 30);
        bgm_PlayFadeIn(BGM_IN_THE_DEPTHS_OF_THE_PIT, 0, 256);
        with (actor ACTOR_ATTENDANT1) {
            MovePositionMark(1, Position<'m0', 26.5, 20.5>);
        }
        with (actor ACTOR_PLAYER) {
            MovePositionMark(1, Position<'m1', 30.5, 20.5>);
        }
        with (actor ACTOR_UNIT_NPC1) {
            MovePositionMark(1, Position<'m2', 28.5, 24.5>);
        }
        with (actor ACTOR_UNIT_NPC2) {
            MovePositionMark(1, Position<'m3', 31.5, 23.5>);
        }
        WaitExecuteLives(ACTOR_PLAYER);
        Wait(15);
        with (actor ACTOR_ATTENDANT1) {
            ExecuteCommon(CORO_LOOK_AROUND_FUNC_SERIES, 0);
        }
        Wait(12);
        with (actor ACTOR_PLAYER) {
            ExecuteCommon(CORO_LOOK_AROUND_LEFT_FUNC_SERIES, 0);
        }
        Wait(4);
        with (actor ACTOR_UNIT_NPC1) {
            ExecuteCommon(CORO_LOOK_AROUND_DOWN_FUNC_SERIES, 0);
        }
        Wait(7);
        with (actor ACTOR_UNIT_NPC2) {
            ExecuteCommon(CORO_LOOK_AROUND_RIGHT_FUNC_SERIES, 0);
        }
        WaitExecuteLives(ACTOR_PLAYER);
        Wait(15);
        jump @label_1;
    }
}
