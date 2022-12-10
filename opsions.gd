extends Control




func _on_Button_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://Menu.tscn")
