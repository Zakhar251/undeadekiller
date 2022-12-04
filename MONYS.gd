extends Area2D
var speed = 0


func _ANIM():
	if speed == 0:
		$AnimatedSprite.play("default")
	
	


func _on_MONYS_body_entered(body):
	
	if "Player" in body.name:
		body.add_coin()
		queue_free()
