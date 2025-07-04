extends Label

@onready var timer = $Timer
@onready var victory = $victory
@onready var short_timer = $ShortTimer

var done = false

func _ready():
	timer.start()
	
func _process(delta):
	text = "Time remaining: %ss" % round(timer.time_left)
	
	if timer.time_left <= 0 && done != true:
		done = true
		print("Timer up")
		short_timer.start()
		print("Victory playing")
		victory.play()

func _on_short_timer_timeout():
	print("Change to main")
	get_tree().change_scene_to_file("res://scenes/Mainmenu.tscn");
