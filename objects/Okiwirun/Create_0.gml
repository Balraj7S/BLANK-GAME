// Movement setup
hsp = 0;
walksp = 13; 
vsp = 0;
grv = 0.45;
jumpsp = -14;
global.goose_speed = walksp;


// Game state
global.game_over = false;
global.score = 0;

//health
global.player_health = 3;
global.game_over = false;


// Load high score from file
if (file_exists("savefile.txt")) 
{
    var file = file_text_open_read("savefile.txt");
    global.high_score = real(file_text_read_string(file));
    file_text_close(file);
} else
{
    global.high_score = 0;
}
