extends Node

@export var mob_scene: PackedScene
var score

func _ready():
	pass

func _process(delta):
	pass

func _on_player_hit():
	pass # Replace with function body.

func game_over():
	$ScoreTimer.stop()
	$MobTimer.stop()
	$HUD.show_game_over()
	get_tree().call_group("mobs", "queue_free")
	$Music.stop()
	$DeathSound.play()

func new_game():
	score = 0
	$Player.start($StartPosition.position)
	$StartTimer.start()
	$Music.play()
	
	$HUD.update_score(score)
	$HUD.show_message("Get Ready")

func _on_mob_timer_timeout():
	# criando uma nova instancia do mob
	var mob = mob_scene.instantiate()
	
	# escolher uma posicao aleatoria
	var mob_spawn_location = get_node("MobPath/MobSpawnLocation")
	mob_spawn_location.progress_ratio = randf()
	
	# direcao perpendicular a direcao do caminho
	var direction = mob_spawn_location.rotation + PI / 2
	
	# posicao do mob em um local aleatorio
	mob.position = mob_spawn_location.position
	
	# adicionando aleatoriedade para a direcao
	direction += randf_range(-PI / 4, PI / 4)
	mob.rotation = direction
	
	# velocidade do mob
	var velocity = Vector2(randf_range(150.0, 250.0), 0.0)
	mob.linear_velocity = velocity.rotated(direction)
	
	# spawnar o mob
	add_child(mob)

func _on_score_timer_timeout():
	score += 1
	$HUD.update_score(score)

func _on_start_timer_timeout():
	$MobTimer.start()
	$ScoreTimer.start()

func _on_hud_start_game():
	pass # Replace with function body.
