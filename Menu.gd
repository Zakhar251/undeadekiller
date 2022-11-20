extends Control

func _on_NewGame_pressed():
	 get_tree().change_scene("res://REVIM.tscn")


func _on_Characters_pressed():
	get_tree().change_scene("res://персы.tscn")


func _on_Shop_pressed():
	pass # Replace with function body.


func _on_Settings_pressed():
	get_tree().change_scene("res://opsions.tscn")


func _on_Exit_pressed():
	get_tree().quit()
