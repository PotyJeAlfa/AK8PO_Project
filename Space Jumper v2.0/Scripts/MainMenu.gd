extends Control

func _ready():
	$VBoxContainer/StartButton.pressed.connect(_on_start_pressed)
	$VBoxContainer/QuitButton.pressed.connect(_on_quit_pressed)

func _on_start_pressed():
	# Change to the game scene
	get_tree().change_scene_to_file("res://Scenes/Main.tscn")

func _on_quit_pressed():
	get_tree().quit()
