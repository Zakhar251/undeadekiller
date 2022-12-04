extends Control

func _on_StoryGame_pressed():
	get_tree().change_scene("res://main.tscn")


func _on_Arcade_pressed():
	get_tree().change_scene("res://СКОРО.tscn")


func _on__pressed():
	get_tree().change_scene("res://Menu.tscn")
