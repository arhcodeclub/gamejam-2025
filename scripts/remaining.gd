extends Label

@onready var timer = $Timer
@onready var victory = $victory
@onready var short_timer = $ShortTimer

func _ready():
	timer.start()
	
func _process(delta):
	text = "Time remaining: %ss" % round(timer.time_left)
	
	if timer.time_left <= 0:
		short_timer.start()
		victory.play()


func _on_short_timer_timeout():
	get_tree().change_scene_to_file("res://scenes/Mainmenu.tscn");
