draw_set_font(fnt_menu);

var gui_width = display_get_gui_width();
var gui_height = display_get_gui_height();
var x_width = gui_width / 2;
var y_height = gui_height / 2;
var margin_top = 100;

draw_set_halign(fa_center);
draw_set_valign(fa_center);

for(var i=0;i<op_max;i++){
	if(index == i){
		draw_set_color(c_red);
	}else{
		draw_set_color(c_white);
	}
	
	var y_height_update = y_height + (margin_top * i);
	draw_text(x_width,y_height_update,options[i]);
			
}

