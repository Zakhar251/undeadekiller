extends Control

var pers = 1



func _process(delta):
	if Global.vika == true and Global.free_vika == 1:
		$VIKA_zabl.visible = false
		$VIKA.visible = true
		Global.free_vika -= 1
		Global.pers += 1
		print("вика приобретена")
		
	$Label.text = str(Global.pers)


func _on__pressed():
	get_tree().change_scene("res://Menu.tscn")





func _on_Ma_pressed():
	get_tree().change_scene("res://Майкл.tscn")



