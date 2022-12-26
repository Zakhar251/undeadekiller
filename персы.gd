extends Control

var pers = 1

func _process(delta):
	$Label.text = str(Global.pers)

func per():
	Global.person()

func _on__pressed():
	get_tree().change_scene("res://Menu.tscn")





func _on_Ma_pressed():
	get_tree().change_scene("res://Майкл.tscn")


func _on_Button_pressed():
	per()
