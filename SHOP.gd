extends Control




func _on_Button_pressed():
	if Global.freecoin == 1:
		Global.kybki += 1000
		Global.freecoin -= 1
	else:
		print("подарок уже был забран")


func _on_Button2_pressed():
	get_tree().change_scene("res://Menu.tscn")
