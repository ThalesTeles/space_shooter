if(instance_exists(obj_game)){
	if((obj_game.defeatedEnemies % obj_game.metaWaveEnemies) == 0) {
		obj_game.currentWave += 1;
		obj_game.metaWaveEnemies += 5;
	}

	if ((obj_game.currentWave % obj_game.waveBoss) == 0){
		if (!instance_exists(obj_boss)){
			instance_create_layer(room_width/2, -100, "Instances", obj_boss);
			alarm[ALARM_SPAWNER] = -1;
		}	
	} else{
		spawnTime = max(60,  60*5 - (obj_game.currentWave *2));
		if(alarm[ALARM_SPAWNER] < 0){
			alarm[ALARM_SPAWNER] = spawnTime
		}
	}
}
