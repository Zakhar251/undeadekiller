extends Control

var pers = 1



func per():
	if pers < 66:
		pers = pers + 1
		$Label.text = str(pers)

func _on__pressed():
	get_tree().change_scene("res://Menu.tscn")





func _on_Ma_pressed():
	get_tree().change_scene("res://Майкл.tscn")


func _on_Button_pressed():
	per()
