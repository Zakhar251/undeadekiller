extends Node2D

func _process(delta):
	$CONTROL/STATS/Label.text = str($Player.coins)
	   

func _on_Button_pressed():
	get_tree().change_scene("res://Menu.tscn")
	
