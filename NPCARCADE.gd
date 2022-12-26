extends KinematicBody2D

var stands = true
var destin = Vector2()
var vel = Vector2()
var speed = 50

func _process(delta):
	if vel:
		move_and_slide(vel)
		position.x = clamp(position.x, 0, 10000)
		position.y = clamp(position.y, 0, 10000)
	

func set_destination(dest):
	destin = dest
	vel = (destin - position).normalized() * speed
	stands = false
	
func cancel_movment():
	vel = Vector2()
	destin = Vector2()
	$STANDING.start(2)
	
 
func Wander():
	var pos = position 
	if stands:
		randomize()
		var x = int(rand_range(pos.x - 50, pos.x + 50))
		var y = int(rand_range(pos.x - 50, pos.x + 50))
		x = clamp(x , 0 , 10000)
		
		set_destination(Vector2(x, y))
		




func _on_STANDING_TIMER_timeout():
	stands = true
	pass
