extends Control

var x = true

func _DOMO():
	$Button2.visible = true

func _player():
	if Global.vika == false:
		$AnimatedSprite2.visible = false
		$Vika.visible = true
		$Label.visible = false
		$new_player.visible = true
		Global.vika = true
		Global.free_vika = 0
		Global.pers += 1
	else:
		_mony()

	_DOMO()
func _mony():
	var mony_col 
	randomize()
	var mony = randi()% 4
	print (mony)
	if mony == 0:
		$Mony.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '170'
			Global.kybki += 170
		elif mony_col == 1:
			$mony_col.text = '200'
			Global.kybki += 200
		elif mony_col == 2:
			$mony_col.text = '230'
			Global.kybki += 230
		elif mony_col == 3:
			$mony_col.text = '250'
			Global.kybki += 250
	elif mony == 1:
		$red_mony.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '15'
			Global.red_mony += 15
		elif mony_col == 1:
			$mony_col.text = '19'
			Global.red_mony += 19
		elif mony_col == 2:
			$mony_col.text = '25'
			Global.red_mony += 25
		elif mony_col == 3:
			$mony_col.text = '33'
			Global.red_mony += 33
	elif mony == 2:
		$blu_mony.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '13'
			Global.blu_mony += 13
		elif mony_col == 1:
			$mony_col.text = '15'
			Global.blu_mony += 15
		elif mony_col == 2:
			$mony_col.text = '18'
			Global.blu_mony += 18
		elif mony_col == 3:
			$mony_col.text = '22'
			Global.blu_mony += 22
	elif mony == 3:
		$Game.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '10'
			Global.gems += 10
		elif mony_col == 1:
			$mony_col.text = '15'
			Global.gems += 15
		elif mony_col == 2:
			$mony_col.text = '20'
			Global.gems += 20
		elif mony_col == 3:
			$mony_col.text = '22'
			Global.gems += 22
	print(mony)
	_DOMO()
		
func _ready():
	if x == false:
		randomize()
		var num = randi()%100
		print(num)
		if num < 90:
			_mony()  
		else:
			_player() 
		_DOMO()
	

func _on_Button_pressed():
	$Button.disabled = true
	$AnimatedSprite2.play("ot")
	x = false
	_ready()


func _on_Button2_pressed():
	get_tree().change_scene("res://Menu.tscn")
