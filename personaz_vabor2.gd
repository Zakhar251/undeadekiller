extends Control


func _process(delta):
	if Global.vika == true:
		$VIKA_zabl.visible = false
		$VIKA.visible = true
		
		


func _on_VIKA_pressed():
	get_tree().change_scene("res://level2_Vika.tscn")


func _on__pressed():
	get_tree().change_scene("res://REVIM.tscn")


func _on_Ma_pressed():
	get_tree().change_scene("res://level2_maik.tscn")
