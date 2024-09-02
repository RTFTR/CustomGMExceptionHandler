bktglitch_activate(1080,540)

bktglitch_config(0.022854, 0.003333, 2.740000, 1.000000, 0.657847, 0.173333, 0.000000, 0.275160, 0.373975, 0.100742, 0.000000, 0.000000, 9.373753, 0.733333, 0.299674);
d++
if d < 3
	d = 0
draw_sprite_ext(spr_noise,d,0,0,11.8,11.8,0,c_white,0.175)
draw_set_alpha(1)
bktglitch_deactivate()

draw_set_font(font_screen)
draw_set_color(c_white)
//var bsod_color = make_color_rgb(0,119,214)
//draw_rectangle_color(0,0,window_get_width(),window_get_height(),bsod_color,bsod_color,bsod_color,bsod_color,false)
draw_set_halign(fa_middle)
draw_text_transformed(540,60,"SYSTEM HALTED. THE MALFUNCTIONING CODE HAS DETECTED.\n\nTHE GAME IS UNABLE TO HANDLE THE EXCEPTION. THE GAME HAS LOADED THE ALTERNATIVE EXCEPTION HANDLER.\n\nIf you are a developer, Track the faulty objects/scripts that caused this error.\nIf you are a modder, Check the modified codes if there's anything wrong.\nIf you are a player, Contact the developer to fix this issue.\n\nPress X button on the titlebar or X key on your keyboard to turn off this game.",1,1,0)

g++
if file_exists("./crash.txt")
{
    var file = file_text_open_read("./crash.txt");
    y_position = 325; 

	draw_text_transformed(540, y_position-20, ":: What failed ::", 1, 1, 0)
    while (!file_text_eof(file)) {
        var line = file_text_read_string(file);
		var textsize=1
		draw_set_color(make_color_rgb(255,sin(g/255),sin(g/255)))
        draw_text_transformed(540, y_position, line, textsize, textsize, 0);
		draw_set_color(c_white)
        y_position += 20; // Move to the next line, adjust spacing as needed
        file_text_readln(file); // Move to the next line in the file
    }
    
    file_text_close(file);
}

if keyboard_check_pressed(ord("X"))
	game_end()
//draw_text_transformed(0,y_position-15,"\n\nIf this is the first time you've seen this stop error screen,\nRestart the game. If this screen appears again, Follow these\nsteps:\n\nIf you are a modder, Check if there are any variables being unused in the game.\nIf not, check the code lines. There might be some code logic errors in the code.\n\nIf you are a normal player, Contact the developer of this client to report this\nissue. They will provide proper instructions or send the fixed one to you. But\nIf you're using modified version, You're likely to get less help\nfrom them.\n\nIf you are a developer, Refer to this screen and check your codes.\n\nTechnical Information :\n",1,1,0)

if file_exists("./tracer.txt")
{
    var file = file_text_open_read("./tracer.txt");
    y_position2 = y_position+65; 
	draw_text_transformed(540, y_position2-20, ":: Code StackTrace ::", 1, 1, 0)
    while (!file_text_eof(file)) {
        var line = file_text_read_string(file);
		var textsize=1
		draw_set_color(make_color_rgb(255,sin(g/255),sin(g/255)))
        draw_text_transformed(540, y_position2, line, textsize, textsize, 0);
		draw_set_color(c_white)
        y_position2 += 20;
        file_text_readln(file);
    }
    
    file_text_close(file);
}

