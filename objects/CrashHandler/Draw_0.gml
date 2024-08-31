draw_set_font(font_default)
draw_set_color(c_white)
var bsod_color = make_color_rgb(0,0,130)
draw_rectangle_color(0,0,window_get_width(),window_get_height(),bsod_color,bsod_color,bsod_color,bsod_color,false)
draw_text_transformed(0,0,"A problem has been detected and the game has been shut down the application\nto prevent damage to Windows.",1,1,0)
if file_exists("./crash.txt")
{
    var file = file_text_open_read("./crash.txt");
    y_position = 40; 

    while (!file_text_eof(file)) {
        var line = file_text_read_string(file);
		var textsize=1
        draw_text_transformed(0, y_position, line, textsize, textsize, 0);
        y_position += 15; // Move to the next line, adjust spacing as needed
        file_text_readln(file); // Move to the next line in the file
    }
    
    file_text_close(file);
}

draw_text_transformed(0,y_position-15,"\n\nIf this is the first time you've seen this stop error screen,\nRestart the game. If this screen appears again, Follow these\nsteps:\n\nIf you are a modder, Check if there are any variables being unused in the game.\nIf not, check the code lines. There might be some code logic errors in the code.\n\nIf you are a normal player, Contact the developer of this client to report this\nissue. They will provide proper instructions or send the fixed one to you. But\nIf you're using modified version, You're likely to get less help\nfrom them.\n\nIf you are a developer, Refer to this screen and check your codes.\n\nTechnical Information :\n",1,1,0)

if file_exists("./tracer.txt")
{
    var file = file_text_open_read("./tracer.txt");
    var y_position2 = 325; 
    while (!file_text_eof(file)) {
        var line = file_text_read_string(file);
		var textsize=1
        draw_text_transformed(0, y_position2, line, textsize, textsize, 0);
        y_position2 += 15; // Move to the next line, adjust spacing as needed
        file_text_readln(file); // Move to the next line in the file
    }
    
    file_text_close(file);
}