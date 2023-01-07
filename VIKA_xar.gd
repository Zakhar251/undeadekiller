extends Control




func _on__pressed():
	get_tree().change_scene("res://персы.tscn")

func _process(delta):
	$Label4.text = str(Global.red_mony)
	if Global.levelVika == 1:
		$Zvezda1_maik.visible = true
		$Label3.text = '/50'
	elif Global.levelVika == 2:
		$Zvezda1_maik.visible = true
		$Zvezda1_maik2.visible = true
		$Label3.text = '/100'
		
	elif Global.levelVika == 3:
		$Zvezda1_maik3.visible = true
		$Zvezda1_maik.visible = true
		$Zvezda1_maik2.visible = true
		$Label3.visible = false


func _on_Button_pressed():
	if Global.red_mony > 19 and Global.levelVika == 0:
		Global.red_mony -= 20
		Global.levelVika = 1
	elif Global.red_mony > 49 and Global.levelVika == 1:
		Global.red_mony -= 50
		Global.levelVika = 2
	elif Global.red_mony > 99 and Global.levelVika == 2:
		Global.levelVika = 3
		Global.red_mony -= 100
		
