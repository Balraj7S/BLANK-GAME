function scr_highscore_save(file_name) 
{
    var file = working_directory + file_name;
    var handle = file_text_open_write(file);
    file_text_write_real(handle, global.high_score);
    file_text_close(handle);
}
