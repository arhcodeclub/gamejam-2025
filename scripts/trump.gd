extends Node2D

@export var money_per_second :float = 7.93

func _ready() -> void:
	$Timer.set_wait_time(1)
@onready var global = $"../.."

func _process(_delta: float) -> void:
	pass


func _on_timer_timeout() -> void:
	global.money += money_per_second
