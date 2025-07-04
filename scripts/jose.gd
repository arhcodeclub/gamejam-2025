extends CharacterBody2D

@export var speed : int = 256
@export var jump_speed : int = 100
@export var gravity : int = 25

@onready var timer = $Timer
@onready var losing = $losing
@onready var music = $"../music"

var done = false

func resetToBorder() -> void:
	position.x = -300
	position.y = 200

func _ready() -> void:
	$AnimatedSprite2D.play("running")
	$AnimatedSprite2D.scale = Vector2(3, 3)

func _physics_process(_delta) -> void:
	if done == false:
		velocity.x = speed
		velocity.y += gravity
		if $RayCast2D.is_colliding():
			velocity.y -= jump_speed
		move_and_slide()

func _on_animated_sprite_2d_animation_changed() -> void:
	if $AnimatedSprite2D.animation == "idle":
		$AnimatedSprite2D.scale = Vector2(1, 1)
	if $AnimatedSprite2D.animation == "running":
		$AnimatedSprite2D.scale = Vector2(3, 3)

func _process(_delta: float) -> void:
	if position.x >= 10300 && done != true:
		print("done")
		done = true
		music.stop()
		losing.play()
		print("start timer")
		timer.start()

func _on_timer_timeout():
	print("Change to menu")
	get_tree().change_scene_to_file("res://scenes/Mainmenu.tscn");
