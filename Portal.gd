extends StaticBody2D




func _on_Area2D_body_entered(body):
	if body.name == 'Player' or body.name == 'VIKA_player':
		Global.portal()
		
