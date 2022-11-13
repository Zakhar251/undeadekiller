extends Area2D


func _on_mybes_body_entered(body):
	if "Player" in body.MONY:
		body.add_coin()
		queue_free()
