/// @description  Check pause event
if (input_check_pressed("start")) {
    if (not instance_exists(GameSuspension)) {
        instance_create_layer(0, 0, "screen", PausedScreen);
    } else if (instance_exists(PausedScreen)) {
        instance_destroy(PausedScreen);
    }
}

