extends Control


func _process(delta):
	if Global.vika == true:
		$VIKA_zabl.visible = false
		$VIKA.visible = true
	if Global.levelMaik1 == 1:
		$Zvezda1_maik.visible = true
	elif Global.levelMaik1 == 2:
		$Zvezda1_maik.visible = true
		$Zvezda1_maik2.visible = true
	elif Global.levelMaik1 == 3:
		$Zvezda1_maik3.visible = true
		$Zvezda1_maik.visible = true
		$Zvezda1_maik2.visible = true
		
		


func _on_VIKA_pressed():
	if Global.level_vabor == 1:
		get_tree().change_scene("res://main_mike.tscn")
	elif Global.level_vabor == 2:
		Global.player_level = 'Vika'
		get_tree().change_scene("res://Level 2 comnata 1.tscn")
	elif Global.level_vabor == 3:
		get_tree().change_scene("res://level3_Vika.tscn")



func _on__pressed():
	get_tree().change_scene("res://REVIM.tscn")


func _on_Ma_pressed():
	if Global.level_vabor == 1:
		get_tree().change_scene("res://main.tscn")
	elif Global.level_vabor == 2:
		Global.player_level = 'Maike'
		get_tree().change_scene("res://Level 2 comnata 1.tscn")
	elif Global.level_vabor == 3:
		get_tree().change_scene("res://Level3_maik.tscn")
