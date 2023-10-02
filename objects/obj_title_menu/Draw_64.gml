/// @desc menu draw
//setting the menu font
draw_set_font(fnt_menu);

//getting mouse position
var m_x = device_mouse_x_to_gui(0);
var m_y = device_mouse_y_to_gui(0);

// dynamically get wodth and height of menu
var _new_w = 0;
for (var i = 0; i < op_length; i++) 
{
	var _op_w = string_width(option[menu_level, i]);
	_new_w = max(_new_w, _op_w);
}
width = _new_w + op_border*2;
height = op_border*2 + string_height(option[0, 0]) + (op_length-1)*op_space;

//center menu
x = camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0])/2 - width/2;
y = camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0])/2 - height/2;

//draw the menu background
draw_sprite_ext(sprite_index, image_index, x, y, width/sprite_width, height/sprite_height, 0, c_white, 1);

//draw the options
draw_set_valign(fa_top);
draw_set_halign(fa_left);
for (var i = 0; i < op_length; i++) 
{
	var _c = c_white;
	var string_w = string_width(option[menu_level, i]);
	var string_h = string_height(option[menu_level, i]);
	var y2 =  y+op_border + op_space*i;
	//create rectangle on the string for the mouse check
	if (point_in_rectangle(m_x, m_y, string_w,  y2 - (string_h/2), x+op_border + string_w, y2 + string_h )) 
	{
		if (menu_level == 2 && pos == 0)
		{
			_c = c_white;
			draw_set_color(_c)
			pos = i;
		}else{
			_c = c_yellow
			draw_set_color(_c)
			pos = i;
		}
	}else
	{
		var _c = c_white;
		draw_set_color(_c)
	}
	
	if pos == i {_c = c_yellow};
	if menu_level == 2 && pos == 0 
	{
		_c = c_white;
		pos = 1;
	}
	draw_text_color(x+op_border, y2, option[menu_level, i], _c, _c, _c, _c, 1);
}
	if (menu_level == 1 && pos == 0)
		{
			//currnet volume text
			draw_text_color(x+op_border + 220, y2/1.4, global.currentVolume, _c, _c, _c, _c, 1)
		}




