extends Button

@onready var global = $"."

func _process(_delta) -> void:
	if global.money >= 200:
		$".".add_color_override("font_color", Color.GREEN)
