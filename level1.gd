extends Node2D
var save = false
func _process(delta):
	$CONTROL/STATS/Label.text = str($Player.coins)

	

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Pause.tscn")

func _on_Exit_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://Menu.tscn")
	

