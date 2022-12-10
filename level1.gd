extends Node2D

func _process(delta):
	$CONTROL/STATS/Label.text = str($Player.coins)
	   
func _ready():
	$Player2.play()
	

	


func _on_TextureButton_pressed():
	get_tree().change_scene("res://Pause.tscn")


func _on_Exit_pressed():
	get_tree().change_scene("res://Menu.tscn")
