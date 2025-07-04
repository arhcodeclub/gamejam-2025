extends CharacterBody2D

func _physics_process(_delta) -> void:
	if Input.is_action_pressed("ui_right"):
		velocity.x = 5
	if Input.is_action_pressed("ui_left"):
		velocity.x = -5
	else:
		velocity.x = 0
	
	move_and_slide()

func _on_animated_sprite_2d_animation_changed() -> void:
	if $AnimatedSprite2D.animation == "idle":
		$AnimatedSprite2D.scale = Vector2(1, 1)
	if $AnimatedSprite2D.animation == "running":
		$AnimatedSprite2D.scale = Vector2(3, 3)
