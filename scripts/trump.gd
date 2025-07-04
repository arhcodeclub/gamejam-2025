extends Node2D

@export var money_per_second :float = 7.93

@onready var global = $"../.."

func _ready() -> void:
	$Timer.set_wait_time(1)
	$AnimatedSprite2D.play("normal")

func _process(_delta: float) -> void:
	if global.distance > 12050/2:
		$AnimatedSprite2D.play("anger_2")


func _on_timer_timeout() -> void:
	global.money += money_per_second
