/// @description Insert description here
// You can write your code in this editor
var _saveData = array_create(0);

with (oPlayer) {
	var _saveEntity = 
	{
		obj : object_get_name(object_index),
		x : x,
		y : y,
		image_index : image_index
	}
	array_push(_saveData, _saveEntity);
}

with (oCane) {
	var _saveEntity = 
	{
		obj : object_get_name(object_index),
		x : x,
		y : y,
		image_index : image_index
	}
	array_push(_saveData, _saveEntity);
}

with (oEnemy) {
	var _saveEntity = 
	{
		obj : object_get_name(object_index),
		x : x,
		y : y,
		image_index : image_index
	}
	array_push(_saveData, _saveEntity);
}

var _string = json_stringify(_saveData);
var _buffer = buffer_create(string_byte_length(_string) + 1, buffer_fixed, 1);
buffer_write(_buffer, buffer_string, _string);
buffer_save(_buffer, "savedata.save");
buffer_delete(_buffer);

show_debug_message("Game Saved!" + _string);