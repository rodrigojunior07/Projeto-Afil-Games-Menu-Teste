// Os recursos de script mudaram para a v2.3.0; veja
// https://help.yoyogames.com/hc/en-us/articles/360005277377 para obter mais informações
function menu_selection(_options, _selected_option) {
    if (_selected_option >= 0 && _selected_option < array_length(_options)) {
        _options[_selected_option]();
    }
}