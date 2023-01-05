extends Area2D


func _on_MONYS_body_entered(body):
	if "Player" in body.name or body.name == 'VIKA_player':
		body.add_coin()
		queue_free()

