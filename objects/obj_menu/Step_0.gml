for (var _i = 0; _i < menu_options_length; _i++) {
  
    var _x1 = display_get_width() / 2 - string_width(menu_options[_i]) / 2;
	
    var _x2 = _x1 + string_width(menu_options[_i]);

    var _y1 = display_get_height() / 2 + (distance_between_options_text * _i) - font_get_size(fnt_menu) / 2;
	
    var _y2 = _y1 + font_get_size(fnt_menu);

    if (mouse_x >= _x1 && mouse_x <= _x2 && mouse_y >= _y1 && mouse_y <= _y2) {
		
        selected_option = _i;

        if (mouse_check_button_pressed(mb_left) && selected_option >= 0) {
			
            menu_selection(menu_options_functions, selected_option);
			
        }
		
    }
	
}
