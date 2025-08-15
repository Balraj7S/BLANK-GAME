function scr_highscore_load()
{
    var file = working_directory + "highscore.sav";
    
    try 
	{
        var handle = file_text_open_read(file);
        global.high_score = file_text_read_real(handle);
        file_text_close(handle);
    }
    catch (_exception) {
        global.high_score = 0;
    }
}
