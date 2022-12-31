extends Control
var time_begin
var time_delay




func _process(delta):
	$Label2.text = str(Global.red_mony)
	$Control/Label.text = str(Global.kybki)
	$Label3.text = str(Global.gems)
	$Label.text = str(Global.blu_mony)
	$Label5.text = str(Global.kybok)

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
	get_tree().change_scene("res://NASTROIKI.tscn")


func _on_Exit_pressed():
	get_tree().quit()
	




