extends ParallaxBackground

var scroll_speed = 100

func _process(delta):
	scroll_offset.x -= scroll_speed * delta;
