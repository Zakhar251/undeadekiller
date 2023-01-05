extends Control

func _process(delta):
	if Global.level2 == true:
		$TextureButton2.visible = true
		$"Sprite-0001".visible = false
		$"Sprite-0011".visible = false
		
	if Global.level3 == true:
		$TextureButton3.visible = true
		$"Sprite-0012".visible = false
		$"Sprite-0002".visible = false
		
			
	



func _on_TextureButton_pressed():
	Global.level_vabor = 1
	get_tree().change_scene("res://personaz_vabor.tscn")


func _on__pressed():
	get_tree().change_scene("res://REVIM.tscn")


func _on_TextureButton2_pressed():
	Global.level_vabor = 2
	get_tree().change_scene("res://personaz_vabor.tscn")


func _on_TextureButton3_pressed():
	Global.level_vabor = 3
	get_tree().change_scene("res://personaz_vabor.tscn")
