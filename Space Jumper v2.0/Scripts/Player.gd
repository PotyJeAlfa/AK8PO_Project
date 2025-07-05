extends CharacterBody2D

const SPEED = 200
const JUMP_VELOCITY = -450
var jump_count = 0

func _physics_process(delta):
	var direction = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	velocity.x = direction * SPEED

	if is_on_floor():
		jump_count = 0
	if Input.is_action_just_pressed("ui_up"):
		if is_on_floor() or jump_count < 1:
			velocity.y = JUMP_VELOCITY
			jump_count += 1

	velocity.y += 20  # gravity
	move_and_slide()
