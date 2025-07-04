extends Control
@onready var global = $".."
func _process(_delta: float) -> void:
	$money.text = "Money: " +  str(global.money)
	
