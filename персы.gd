extends Control


func _on__pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Майкл.tscn")
