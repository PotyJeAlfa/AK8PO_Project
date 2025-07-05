extends Node2D

@onready var player = $Player
@onready var crystal_label = $CanvasLayer/CrystalLabel

var crystals_collected = 0

func _ready():
	update_ui()

	for crystal in get_tree().get_nodes_in_group("crystals"):
		crystal.collected.connect(_on_crystal_collected)

func _on_crystal_collected():
	crystals_collected += 1
	update_ui()
	
func change_scene_safe():
	get_tree().change_scene_to_file("res://Scenes/MainMenu.tscn")

func update_ui():
	crystal_label.text = "Krystaly: " + str(crystals_collected)
	if crystals_collected == 7:
		call_deferred("change_scene_safe")
