/// @description Insert description here
// You can write your code in this editor

if (file_exists("savedata.save")) {
	with (oPlayer) instance_destroy();
	with (oEnemy) instance_destroy();
	with (oCane) instance_destroy();
	
	var _buffer = buffer_load("savedata.save");
	var _string = buffer_read(_buffer, buffer_string);
	buffer_delete(_buffer);
	
	var _loadData = json_parse(_string);
	
	while (array_length(_loadData) > 0) {
		var _loadEntity = array_pop(_loadData);
		with (instance_create_layer(0, 0, layer, asset_get_index(_loadEntity.obj))) {
			x = _loadEntity.x;
			y = _loadEntity.y;
			image_index = image_index;
		}
	}
	
	show_debug_message("Game Loaded!");
}