if(instance_exists(obj_game)){
	isBossWave = obj_game.currentWave % obj_game.waveBoss == 0;
	isChangeWave = obj_game.defeatedEnemies >= obj_game.metaWaveEnemies;
	
	if(isChangeWave &&  !isBossWave) {
		obj_game.currentWave += 1;
		obj_game.defeatedEnemies = 0;
	}

	//TODO: esperar todas as instancias de obj_enemy desaparecerem antes de invocar o boss
	if (isBossWave){
		if (!instance_exists(obj_boss)){
			instance_create_layer(room_width/2, -100, "Instances", obj_boss);
			alarm[ALARM_SPAWNER] = -1;
		}	
	} else{
		spawnTime = max(minSpawnTime,  game_get_speed(gamespeed_fps)*5 - (obj_game.currentWave *30));
		if(alarm[ALARM_SPAWNER] < 0){
			alarm[ALARM_SPAWNER] = spawnTime;
		}
	}
}
