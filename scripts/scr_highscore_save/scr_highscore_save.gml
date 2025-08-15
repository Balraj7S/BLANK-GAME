function scr_highscore_save() {
    var file = working_directory + "highscore.sav";
    var handle = file_text_open_write(file);
    file_text_write_real(handle, global.high_score);
    file_text_close(handle);
}
