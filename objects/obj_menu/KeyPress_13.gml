switch (index)
{
    case 0:
        room_goto(rm_gameplay);
    break;

    case 1:
	   instance_activate_object(obj_menu_config);
	   instance_deactivate_object(obj_menu);
    break;
	
	case 2:
        game_end();
    break;
  
}