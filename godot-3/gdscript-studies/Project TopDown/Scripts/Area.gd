extends Area2D


func _ready():
	connect("body_entered", self, "_on_Area_body_entered")
	connect("body_exited", self, "_on_Area_body_exited")

func _on_Area_body_entered(body):
	if body.get_name() == "Player":
		self.add_to_group("Areas") 

func _on_Area_body_exited(body):
	self.remove_from_group("Areas")
