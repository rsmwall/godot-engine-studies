extends Sprite


func _ready():
	set_process_input(true)

func _input(event):
	if Input.is_key_pressed(KEY_Y):
		get_tree().change_scene("res://Scenes/Main.tscn")
