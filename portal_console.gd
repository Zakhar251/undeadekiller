extends CanvasLayer





func _on_TextureButton_pressed():
	Global.kybok += 3
	Global.level2 = true
	get_tree().change_scene("res://Menu.tscn")
	get_tree().paused = false
	Global.porrtal = false
