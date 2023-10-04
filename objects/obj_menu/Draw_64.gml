draw_set_font(fnt_menu);

draw_set_color(c_white);

if (current_menu == m_exit) {
	
    x = display_get_width() / 2;
	
    y = display_get_height() / 2;
	
    draw_roundrect(x - popup_width / 2, (y - popup_height / 2) + separation_options - 5, x + popup_width / 2, y + popup_height / 2, 8);
}

for (var _i = 0; _i < array_length(menu_sample_text); _i++) {
	
    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 - (separation_options) + (distance_between_options_text * _i), menu_sample_text[_i]);
	
}

for (var _i = 0; _i < menu_options_length; _i++) {
	
    draw_set_halign(fa_center);
	
    if (_i == selected_option) {
		
        draw_set_color(c_aqua);
		
    } else {
		
        draw_set_color(c_purple);
    }


    draw_text(display_get_gui_width() / 2, display_get_gui_height() / 2 + (distance_between_options_text * _i), menu_options[_i]);
	
}




