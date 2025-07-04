extends Button

@onready var bg_menu = $"../traps"

func _on_pressed():
	bg_menu.visible = !bg_menu.visible
