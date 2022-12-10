extends Node



func _on__pressed():
	$BUTTON.play()
	get_tree().change_scene("res://Menu.tscn")
