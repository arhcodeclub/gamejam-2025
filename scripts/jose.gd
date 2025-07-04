extends CharacterBody2D

@export var speed : int = 256
@export var jump_speed : int = 100
@export var gravity : int = 25

func _ready() -> void:
	$AnimatedSprite2D.play("running")
	$AnimatedSprite2D.scale = Vector2(3, 3)

func _physics_process(_delta) -> void:
	velocity.x = speed
	velocity.y += gravity
	if $RayCast2D.is_colliding():
		velocity.y -= jump_speed
	move_and_slide()
	print(velocity.y)
func _on_animated_sprite_2d_animation_changed() -> void:
	if $AnimatedSprite2D.animation == "idle":
		$AnimatedSprite2D.scale = Vector2(1, 1)
	if $AnimatedSprite2D.animation == "running":
		$AnimatedSprite2D.scale = Vector2(3, 3)
