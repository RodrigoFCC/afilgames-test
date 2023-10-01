/// @description Insert description here
//get inputs 
up_key = keyboard_check_pressed(vk_up);
down_key = keyboard_check_pressed(vk_down);
accept_key = keyboard_check_pressed(vk_enter);

//store number of options in current menu

op_length = array_length(option[menu_level]);

// move through the menu
pos += down_key - up_key;
if pos >= op_length {pos = 0};
if pos < 0 {pos = op_length-1};

//using the options
if accept_key {
	
	var _sml = menu_level;

	switch(menu_level) {
		
			//start menu
			case 0:
				switch(pos) {
					//start game
					case 0:	room_goto(rm_gameplay); break;
					//settings
					case 1: menu_level = 1; break;
					//quit game
					case 2: game_end(); break;
					}
				break;
			
			//settings menu
			case 1:
				switch(pos) {
					//volume settings
					case 0:	
				 
						break;
					//full screen settings
					case 1: 
					
						break;
					//back to the start menu
					case 2: 
						menu_level = 0;
						break;
					}
				break;
		
		}
	
	//set position back
	if _sml != menu_level {pos = 0};
	
	//corret option length
	op_length = array_length(option[menu_level]);
}