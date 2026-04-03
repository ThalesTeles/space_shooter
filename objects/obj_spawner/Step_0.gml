if(instance_exists(obj_game)){
	isBossWave = obj_game.currentWave % obj_game.waveBoss == 0;
	isChangeWave = obj_game.defeatedEnemies >= obj_game.metaWaveEnemies;
	
	if(isChangeWave &&  !isBossWave) {
		obj_game.currentWave += 1;
		obj_game.defeatedEnemies = 0;
	}

	//TODO: esperar todas as instancias de obj_enemy desaparecerem antes de invocar o boss
	if (isBossWave){
		if (!instance_exists(obj_boss) && !instance_exists(obj_enemy_ship)){
			instance_create_layer(room_width, room_height/2, "Instances", obj_boss);
		}	
		alarm[ALARM_SPAWNER] = -1;
	} else{
		spawnTime = max(minSpawnTime,  baseSpawnTime - ((obj_game.currentWave-1) * decreaseSpawnTime));
		if(alarm[ALARM_SPAWNER] < 0){
			alarm[ALARM_SPAWNER] = spawnTime;
		}
	}
}
