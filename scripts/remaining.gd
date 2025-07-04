extends Label

@onready var timer = $Timer

func _ready():
	timer.start()
	
func _process(delta):
	text = "Time remaining: %ss" % round(timer.time_left)
	
	if timer.time_left <= 0:
		get_tree().change_scene_to_file("res://scenes/Mainmenu.tscn");
