///Un-darken everything
with (obj_blackness) {
    if (! undarkening) {
        //You lost!
        with (instance_create(0, room_height - 18 * 2 - 7 + 9, obj_bottominfo)) {
            text = "You saved the land from the darkness! Great job! You won, but you can still continue improving the land if you want.";
            occasion = 2;
        }
    
        undarkening = true;
        alarm[0] = -1;
        alarm[1] = 10;
    }
}
