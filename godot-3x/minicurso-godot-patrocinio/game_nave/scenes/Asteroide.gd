extends Node2D

var moveSpeed = 5

func _ready():
	pass

func _process(delta):
	global_position.x -= moveSpeed
