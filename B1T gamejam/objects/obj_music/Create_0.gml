if (instance_number(obj_music) > 1) { instance_destroy(); exit; }

// Start looping BGM if it's not already playing
if (!audio_is_playing(snd_bgm)) {
    global.bgm = audio_play_sound(snd_bgm, 0, true); // priority 0, loop = true
    audio_sound_gain(global.bgm, 0.7, 0);            // volume 0..1 (optional)
}