extends Node2D


func _process(delta):
	$CONTROL/STATS/Label.text = str($Player.coins)
	$CONTROL/hp/Label.text = str($Player.hp)
