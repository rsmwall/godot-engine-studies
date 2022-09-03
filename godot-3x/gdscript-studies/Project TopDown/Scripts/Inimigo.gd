extends StaticBody2D


func _ready():
	get_node("Area").connect("area_entered", self, "destruir_inimigo")

func destruir_inimigo(area):
	if area.get_name() == "AreaEsp":
		queue_free()
