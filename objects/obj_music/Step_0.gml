/// @description Insert description here	
	if (global.currentVolume != global.volume) 
{
	global.currentVolume = global.volume;
	var num = audio_get_listener_count();
if (obj_title_menu.pos == 0 && obj_title_menu.menu_level == 1){
	for (var i = 0; i < num; ++i;)
	{
		var info = audio_get_listener_info(i);
		var ind = info[? "index"];
		audio_set_master_gain(ind,global.currentVolume/10);
		ds_map_destroy(info);
	}
}

}




