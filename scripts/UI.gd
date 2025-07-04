extends Control
@onready var global = $".."

func _process(_delta: float) -> void:
	$money.text = "Money: " +  str(global.money)
	$remaining.text = "Distance remaining: " + str(1000 - global.distance) + "m"
	if global.money <=200:
		$traps/VBoxContainer/EGG.disabled = true
		$traps/VBoxContainer/NATIONAL_GUARD.disabled = true
	else:
		$traps/VBoxContainer/EGG.disabled = false
		$traps/VBoxContainer/NATIONAL_GUARD.disabled = false
	if global.money <=333:
		$traps/VBoxContainer/ICE.disabled = true
	else:
		$traps/VBoxContainer/ICE.disabled = false
	
	if $traps/VBoxContainer/EGG.button_pressed:
		global.money -= 200
		$"../../Jose".resetToBorder()
	
