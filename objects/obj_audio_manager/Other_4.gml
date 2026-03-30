audio_stop_all();

switch (room) {
    case menu: 
        audio_play_sound(snd_soundtrack_menu, 100, true);
        break;
    case game: 
        audio_play_sound(snd_soundtrack_game, 100, true);
        break
    case game_over: 
        audio_play_sound(snd_soundtrack_game_over, 100, true);
        break;
}