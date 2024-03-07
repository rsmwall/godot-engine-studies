extends Node2D

onready var asteroidScene = preload("res://scenes/Asteroide.tscn")

func _ready():
	pass

func _on_TimerAsteroide_timeout():
	var asteroide = asteroidScene.instance()
	asteroide.global_position.x = 150
	asteroide.global_position.y = -20
	add_child(asteroide)
