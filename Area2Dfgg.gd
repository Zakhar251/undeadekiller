extends Area2D



func _on_Area2Dfgg_body_entered(body):
	if body.name == "Player" or body.name == "VIKA_player":
		body.add_hp()
		queue_free()
