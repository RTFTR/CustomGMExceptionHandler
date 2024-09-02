draw_set_font(font_example)
draw_set_color(c_white)
draw_text_transformed(0,0,"This project is to test if the custom exception handler is workig fine.\nIf you press 1, You'll know.",2,2,0)

if keyboard_check_pressed(ord("1"))
{
	wowthatsacrashwowwowo++	
}