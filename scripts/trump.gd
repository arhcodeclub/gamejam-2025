extends Node2D

@export var money_per_second: float = 7.93

@onready var global = $"../.."
@onready var timer = $"../Control/remaining/Timer"
@onready var sprite = $AnimatedSprite2D

func _ready() -> void:
	sprite.play("normal")

func _process(_delta: float) -> void:
	if round(timer.time_left) < 30:
		sprite.play("anger_2")

func _on_timer_timeout() -> void:
	global.money += money_per_second
