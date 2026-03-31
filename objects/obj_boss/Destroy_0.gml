if(instance_exists(obj_game)){
	obj_game.currentWave += 1;
	obj_game.defeatedEnemies = 0;
	obj_game.metaWaveEnemies += 1;
	
	if(instance_exists(obj_spawner)){
		minEnemies += 1;
		maxEnemies += 1;
		spawnTime = baseSpawnTime;
	}
}
	//TODO: Adicionar bonus de xp ao eliminar o chefe

