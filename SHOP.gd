extends Control




func _on_Button_pressed():
	if Global.freecoin == 1:
		Global.kybki += 1000
		Global.red_mony += 100
		Global.freecoin -= 1	
	else:
		print("подарок уже был забран")


func _on_Button2_pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_Button3_pressed():
	if Global.freecoin1 == 1:
		Global.blu_mony += 50
		Global.gems += 25
		Global.freecoin1 -= 1
	else:
		print("подарок уже был забран")


func _on_Button4_pressed():
	if Global.freecoin2 == 1:
		Global.vika = true
		Global.pers += 1
		Global.freecoin2 -= 1
	else:
		print("подарок уже был забран")


func _on_Exit_pressed():
	get_tree().change_scene("res://Menu.tscn")


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Menu.tscn")
	
