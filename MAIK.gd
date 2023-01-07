extends Control

func _process(delta):
	$Label4.text = str(Global.red_mony)
	if Global.levelMaik1 == 1:
		$Zvezda1_maik.visible = true
		$Label3.text = '/50'
	elif Global.levelMaik1 == 2:
		$Zvezda1_maik.visible = true
		$Zvezda1_maik2.visible = true
		$Label3.text = '/100'
		
	elif Global.levelMaik1 == 3:
		$Zvezda1_maik3.visible = true
		$Zvezda1_maik.visible = true
		$Zvezda1_maik2.visible = true
		$Label3.visible = false
	

func _on__pressed():
	get_tree().change_scene("res://персы.tscn")


func _on_Button_pressed():
	if Global.red_mony > 19 and Global.levelMaik1 == 0:
		Global.red_mony -= 20
		Global.levelMaik1 = 1
	elif Global.red_mony > 49 and Global.levelMaik1 == 1:
		Global.red_mony -= 50
		Global.levelMaik1 = 2
	elif Global.red_mony > 99 and Global.levelMaik1 == 2:
		Global.levelMaik1 = 3
		Global.red_mony -= 100
		
	
