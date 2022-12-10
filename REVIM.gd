extends Control

	
	
func _on_StoryGame_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://main.tscn")


func _on_Arcade_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://СКОРО.tscn")


func _on__pressed():
	$BUTTON.play()
	get_tree().change_scene("res://Menu.tscn")
