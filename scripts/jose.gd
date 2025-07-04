extends CharacterBody2D

func _physics_process(delta) -> void:
	if Input.is_action_pressed("ui_right"):
		velocity.x = 5
	if Input.is_action_pressed("ui_left"):
		velocity.x = -5
	else:
		velocity.x = 0
	
	move_and_slide()
