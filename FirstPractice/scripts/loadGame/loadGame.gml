
function loadGame(){

	if (file_exists("savedata.save")) {
		
		instance_activate_all();
	
		var _buffer = buffer_load("savedata.save");
		var _string = buffer_read(_buffer, buffer_string);
		buffer_delete(_buffer);
	
		var _loadData = json_parse(_string);
		
		var _loadEntity = array_pop(_loadData);
		room_goto(asset_get_index(_loadEntity.targetRoom));
		global.playerhealth = _loadEntity.playerhealth;
		global.maxhealth = 10;
		oPlayer.x = _loadEntity.targetX;
		oPlayer.y = _loadEntity.targetY;
		show_debug_message("Game Loaded!");
		global.gamePaused = !global.gamePaused;
	}
}