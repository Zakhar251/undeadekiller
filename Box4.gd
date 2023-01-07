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
			$mony_col.text = '200'
			Global.kybki += 200
		elif mony_col == 1:
			$mony_col.text = '500'
			Global.kybki += 500
		elif mony_col == 2:
			$mony_col.text = '300'
			Global.kybki += 300
		elif mony_col == 3:
			$mony_col.text = '400'
			Global.kybki += 400
	elif mony == 1:
		$red_mony.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '25'
			Global.red_mony += 25
		elif mony_col == 1:
			$mony_col.text = '33'
			Global.red_mony += 33
		elif mony_col == 2:
			$mony_col.text = '36'
			Global.red_mony += 36
		elif mony_col == 3:
			$mony_col.text = '40'
			Global.red_mony += 40
	elif mony == 2:
		$blu_mony.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '20'
			Global.blu_mony += 20
		elif mony_col == 1:
			$mony_col.text = '23'
			Global.blu_mony += 23
		elif mony_col == 2:
			$mony_col.text = '26'
			Global.blu_mony += 26
		elif mony_col == 3:
			$mony_col.text = '33'
			Global.blu_mony += 33
	elif mony == 3:
		$Game.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '22'
			Global.gems += 22
		elif mony_col == 1:
			$mony_col.text = '25'
			Global.gems += 25
		elif mony_col == 2:
			$mony_col.text = '33'
			Global.gems += 33
		elif mony_col == 3:
			$mony_col.text = '40'
			Global.gems += 40
	print(mony)
	_DOMO()
		
func _ready():
	if x == false:
		randomize()
		var num = randi()%100
		print(num)
		if num < 80:
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
