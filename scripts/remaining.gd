extends Label

@onready var timer = $Timer

func _ready():
	timer.start()
	
func _process(delta):
	text = "Time remaining: %ss" % round(timer.time_left)
