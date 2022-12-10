extends Control
var time_begin
var time_delay


func _ready():
	$Player.play()
	




func _on_NewGame_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://REVIM.tscn")
	


func _on_Characters_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://персы.tscn")


func _on_Shop_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://СКОРО.tscn")


func _on_Settings_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://СКОРО.tscn")


func _on_Exit_pressed():
	$BUTTON.play()
	get_tree().quit()
