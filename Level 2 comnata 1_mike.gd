extends Node2D


func _process(delta):
	if Global.porrtal == true:
		$portal_level2.visible = true
		get_tree().paused = true
		
	$CONTROL/STATS/Label.text = str($Player.coins)
	$CONTROL/hp/Label.text = str($Player.hp)


func _on_Exit_pressed():
	get_tree().change_scene("res://Menu.tscn")
