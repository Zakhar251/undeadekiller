extends CanvasLayer





func _on_TextureButton_pressed():
	Global.kybok += 8
	Global.level4 = true
	get_tree().change_scene("res://Menu.tscn")
	get_tree().paused = false
	Global.porrtal = false

