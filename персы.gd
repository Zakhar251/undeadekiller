extends Control


func _process(delta):
	if Global.vika == true:
		$VIKA_zabl.visible = false
		$VIKA.visible = true
		Global.free_vika -= 1
		print("вика приобретена")
		
	$Label.text = str(Global.pers)


func _on__pressed():
	get_tree().change_scene("res://Menu.tscn")





func _on_Ma_pressed():
	get_tree().change_scene("res://MAIK.tscn")





func _on_VIKA_pressed():
	get_tree().change_scene("res://VIKA_xar.tscn")


func _on_VIKA_zabl_pressed():
	get_tree().change_scene("res://VIKA_Zablk.tscn")
