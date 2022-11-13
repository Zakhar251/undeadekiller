extends Area2D




func _on_4444_body_entered(body):
	if "ящик" in body.name:
		body._platform_vis()
