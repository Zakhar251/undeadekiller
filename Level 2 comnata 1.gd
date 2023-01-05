extends Node2D
var vika_kils = true
var Maike = true

func Vika_kils():
	if vika_kils == true:
		$VIKA_player.queue_free()
		vika_kils = false

	
func Mike_kils():
	if Maike == true:
		$Player.queue_free()
		Maike = false

func _process(delta):
	if Global.porrtal == true:
		$portal_level2.visible = true
		get_tree().paused = true
	if Global.player_level == 'Vika':
		$CONTROL/STATS/Label.text = str($VIKA_player.coins)
		$CONTROL/hp/Label.text = str($VIKA_player.hp)
		$VIKA_player/Camera2D.current = true
		Mike_kils()
	elif Global.player_level == 'Maike':
		$CONTROL/STATS/Label.text = str($Player.coins)
		$CONTROL/hp/Label.text = str($Player.hp)
		$Player/Camera2D.current = true
		Vika_kils()
		
		
	



func _on_Exit_pressed():
	get_tree().change_scene("res://Menu.tscn")
	
