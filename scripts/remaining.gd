extends Label

@onready var timer = $Timer
@onready var victory = $victory
@onready var short_timer = $ShortTimer
@onready var music = $"../../../music"
@onready var alarm = $alarm
@onready var jose = $"../../../Jose"

var done = false
var isPlaying = false

func _ready():
	timer.start()
	
func _process(delta):
	text = "Time remaining: %ss" % round(timer.time_left)
	
	if timer.time_left <= 10 && isPlaying != true:
		isPlaying = true
		alarm.play()
	
	if timer.time_left <= 0 && done != true:
		done = true
		print("Timer up")
		short_timer.start()
		jose.speed = 0
		print("Victory playing")
		music.stop()
		victory.play()

func _on_short_timer_timeout():
	print("Change to main")
	get_tree().change_scene_to_file("res://scenes/Win.tscn");
