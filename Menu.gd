extends Control
var time_begin
var time_delay




func _process(delta):
	$Control/Label.text = str(Global.kybki)

func _on_NewGame_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://REVIM.tscn")
	


func _on_Characters_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://персы.tscn")


func _on_Shop_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://SHOP.tscn")


func _on_Settings_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://СКОРО.tscn")


func _on_Exit_pressed():
	get_tree().quit()
	




func get_save_stats():
	return{
		'filename':get_filename(),
		'parent': get_parent().get_path(),
		'stats':{
			'pers' : Global.pers,
			'kybki' : Global.kybki,
			'freecoin' : Global.freecoin
			
			
		}
		
	}
	


