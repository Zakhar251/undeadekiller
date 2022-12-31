extends CanvasLayer





func _on_TextureButton_pressed():
	Global.kybok += 3
	get_tree().change_scene("res://Menu.tscn")
	get_tree().paused = false
	Global.porrtal = false
