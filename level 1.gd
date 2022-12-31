extends Node2D

var save = false


func _process(delta):
	$CONTROL/STATS/Label.text = str($VIKA_player.coins)
	$CONTROL/hp/Label.text = str($VIKA_player.hp)
	if Global.porrtal == true:
		$portal_console.visible = true

	

func portal():
	$portal_console.visible = true

func _on_TextureButton_pressed():
	get_tree().change_scene("res://Pause.tscn")

func _on_Exit_pressed():
	$BUTTON.play()
	get_tree().change_scene("res://Menu.tscn")
	

