extends Node2D

onready var anim = get_node("Anim")
onready var spr = get_node("Sprite")

func _ready():
	set_process_input(true)

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		spr.set_scale(Vector2(1, 1))
		anim.play("Fade")
	if Input.is_action_pressed("ui_up"):
		spr.set_modulate(Color(1, 1, 1, 1))
		anim.play("Scale")