extends Node2D

func _ready():
	pass
	
func _process(delta: float) -> void:
	var _xAxis = Input.get_axis("ui_left", "ui_right");
	var _yAxis = Input.get_axis("ui_up", "ui_down");
	
	# atualiza posicao da nave
	
	global_position.x += _xAxis;
	global_position.y += _yAxis;
