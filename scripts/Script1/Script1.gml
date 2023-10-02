// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
global.soundOn = true;
global.volume = 1;
global.currentSound = 0;
global.currentVolume = 0;


function Script1(){
	
	left_key = keyboard_check_pressed(vk_left);
	right_key = keyboard_check_pressed(vk_right);
	
	if (left_key) {
		global.volume -= 1;
		global.volume = clamp(global.volume,0,10);
	}
	if (right_key) {
		global.volume += 1;
		global.volume = clamp(global.volume,0,10);
	}
	
	if (global.currentVolume != global.volume) 
{
	global.currentVolume = global.volume;
	var num = audio_get_listener_count();
	for (var i = 0; i < num; ++i;)
	{
		var info = audio_get_listener_info(i);
		var ind = info[? "index"];
		audio_set_master_gain(ind,global.currentVolume/10);
		ds_map_destroy(info);
	}
show_debug_message("volume:"+string(audio_get_master_gain(ind)*100));
}
	
}