extends Control



func _on_new_game_pressed():
	 get_tree().change_scene("res://REVIM.tscn")



func _on_QUIT_pressed():
	get_tree().quit()

func _on_OPSION_pressed():
	get_tree().change_scene("res://opsions.tscn")


func _on_Magazin_pressed():
	get_tree().change_scene("res://MAGAZIN.tscn")


func _on_Button_pressed():
	get_tree().change_scene("res://персы.tscn")
