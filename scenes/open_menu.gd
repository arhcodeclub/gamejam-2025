extends Button

@onready var bg_menu = $"../bgMenu"

func _on_pressed():
	bg_menu.visible = !bg_menu.visible
