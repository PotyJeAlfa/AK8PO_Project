extends Area2D
signal collected

func _ready():
	connect("body_entered", Callable(self, "_on_body_entered"))
	add_to_group("crystals")

func _on_body_entered(body):
	print("Body entered:", body.name)
	if body.name == "Player":
		collected.emit()
		queue_free()
