exception_unhandled_handler(function(ex)
{
	var file_text_open_write_any_path = external_define("ExceptionHandler.dll", "export_text_file", dll_cdecl, ty_real, 2, ty_string, ty_string);
	
	var file=working_directory + "/crash.txt"
	external_call(file_text_open_write_any_path, file, string(ex.longMessage));
	
	var file2=working_directory + "/tracer.txt"
	for (var i = 0 ; i < array_length(ex.stacktrace) ; i++)
		external_call(file_text_open_write_any_path, file2, string(ex.stacktrace));
	
	game_change("", "-game CrashHandler.win")
});

