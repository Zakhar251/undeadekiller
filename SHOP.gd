extends Control





func _on_Button2_pressed():
	if Global.kybki >999:
		Global.kybki -= 1000
		get_tree().change_scene("res://Box2.tscn")



func _on_Exit_pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Menu.tscn")
	


func _on_Button_pressed():
	if Global.kybki > 499:
		Global.kybki -= 500
		get_tree().change_scene("res://Box1.tscn")


func _on_Button3_pressed():
	if Global.gems > 99:
		Global.gems -= 100
		get_tree().change_scene("res://Box3.tscn")


func _on_Button4_pressed():
	if Global.gems > 499:
		Global.gems -= 500
		get_tree().change_scene("res://Box4.tscn")
