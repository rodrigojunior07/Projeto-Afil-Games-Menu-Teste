m_main = "main";

m_config = "config";

m_exit = "exit";

popup_width = 600;

popup_height = 200;

function change_music_volume() {
	
    volume = clamp(volume, 0, 1);
	
    menu_options[0] = "Volume " + string(volume * 100) + "%";
	
    audio_sound_gain(sound_menu, volume, true);
	
}

function reload_fullscreen() {

    if (!window_get_fullscreen()) {
		
        fullscreen_text = "Tela Cheia";
		
    } else {
		
        fullscreen_text = "Tela Padrão";
    }

 
    menu_options[1] = fullscreen_text;
}


function change_menu(_menu) {
   
    current_menu = _menu;
   
    selected_option = 0;

   
    switch (current_menu) {
      
        case m_main:
            menu_sample_text = [""];
			
            menu_options = ["Jogar", "Configurações", "Sair"];
			
            separation_options = 100;
			
            menu_options_functions = [
			
                room_goto_next,
				
                function() { change_menu("config"); },
				
                function() { change_menu("exit"); }
				
            ];
			
            break;

        
        case m_config:
		
            reload_fullscreen();
			
            menu_sample_text = ["Configurações"];
			
			menu_sample_text = ["Para aumentar o volume aperte seta para direita, para diminuir seta para esquerda"];
			
            menu_options = ["Volume" + string(volume * 100) + "%", string(fullscreen_text), "Voltar"];
			
            menu_options_functions = [
			
                function() { },
				
                function() {
					
                    window_set_fullscreen(!window_get_fullscreen());
					
                    reload_fullscreen();
					
                },
				
                function() { change_menu("main"); }
				
            ];
			
            break;
     
        case m_exit:
		
            menu_sample_text = ["Você deseja sair?"];
			
            menu_options = ["Sim", "Não"];
			
            separation_options = 50;
			
            menu_options_functions = [
			
                game_end,
				
                function() { change_menu("main"); }
				
            ];
			
            break;
			
    }

    menu_options_length = array_length(menu_options);
	
}

sound_menu = sm_menu;

volume = 0.4;

menu_sample_text = [];

separation_options = 100;

menu_options = [];	

menu_options_functions = [];	

menu_options_length = 0;

distance_between_options_text = 55;

selected_option = 0;

current_menu = "main";

change_menu(current_menu);
