if (!keyboard_check(vk_control)) {
    if (mouse_check_button_pressed(mb_right)) {
        if (selecting) selecting=0
        clear_inspector()
        deselect()
        begin_undo(act_create)
    }
    if (mouse_check_direct(mb_right)) {
        //delete instances
        if (mode==0) with (instance_position(mouse_x,mouse_y,instance)) {add_undo_instance() instance_destroy()}
        if (mode==1) with (instance_position(mouse_x,mouse_y,tileholder)) {add_undo_tile() instance_destroy()}
    } else {
        push_undo()
    }
}
