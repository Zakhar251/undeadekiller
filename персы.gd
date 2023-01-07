extends Control

func _process(delta):
	if Global.vika == true:
		$VIKA_zabl.visible = false
		$VIKA.visible = true
		Global.free_vika -= 1
		print("вика приобретена")
	if Global.levelMaik1 == 1:
		$Zvezda1_maik.visible = true
	elif Global.levelMaik1 == 2:
		$Zvezda1_maik.visible = true
		$Zvezda1_maik2.visible = true
	elif Global.levelMaik1 == 3:
		$Zvezda1_maik3.visible = true
		$Zvezda1_maik.visible = true
		$Zvezda1_maik2.visible = true
	if Global.levelVika == 1:
		$Zvezda1_maik4.visible = true
	elif Global.levelVika == 2:
		$Zvezda1_maik4.visible = true
		$Zvezda1_maik5.visible = true
	elif Global.levelVika == 3:
		$Zvezda1_maik4.visible = true
		$Zvezda1_maik5.visible = true
		$Zvezda1_maik6.visible = true
		
	$Label.text = str(Global.pers)


func _on__pressed():
	get_tree().change_scene("res://Menu.tscn")





func _on_Ma_pressed():
	get_tree().change_scene("res://MAIK.tscn")





func _on_VIKA_pressed():
	get_tree().change_scene("res://VIKA_xar.tscn")


func _on_VIKA_zabl_pressed():
	get_tree().change_scene("res://VIKA_Zablk.tscn")
