extends Control
var x = true

func _DOMO():
	$Button2.visible = true

func _player():
	if Global.vika == false:
		$Sprite2.visible = false
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
			$mony_col.text = '130'
			Global.kybki += 130
		elif mony_col == 1:
			$mony_col.text = '160'
			Global.kybki += 160
		elif mony_col == 2:
			$mony_col.text = '185'
			Global.kybki += 185
		elif mony_col == 3:
			$mony_col.text = '210'
			Global.kybki += 210
	elif mony == 1:
		$red_mony.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '13'
			Global.red_mony += 13
		elif mony_col == 1:
			$mony_col.text = '17'
			Global.red_mony += 17
		elif mony_col == 2:
			$mony_col.text = '23'
			Global.red_mony += 23
		elif mony_col == 3:
			$mony_col.text = '27'
			Global.red_mony += 27
	elif mony == 2:
		$blu_mony.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '10'
			Global.blu_mony += 10
		elif mony_col == 1:
			$mony_col.text = '13'
			Global.blu_mony += 13
		elif mony_col == 2:
			$mony_col.text = '15'
			Global.blu_mony += 13
		elif mony_col == 3:
			$mony_col.text = '17'
			Global.blu_mony += 17
	elif mony == 3:
		$Game.visible = true
		$mony_col.visible = true
		randomize()
		mony_col = randi()%4
		if mony_col == 0:
			$mony_col.text = '4'
			Global.gems += 4
		elif mony_col == 1:
			$mony_col.text = '7'
			Global.gems += 7
		elif mony_col == 2:
			$mony_col.text = '10'
			Global.gems += 10
		elif mony_col == 3:
			$mony_col.text = '13'
			Global.gems += 13
	print(mony)
	_DOMO()
		
func _ready():
	if x == false:
		randomize()
		var num = randi()%100
		print(num)
		if num < 95:
			_mony()  
		else:
			_player() 
		_DOMO()
	

func _on_Button_pressed():
	$Button.disabled = true
	$Sprite2.play("ot")
	x = false
	_ready()


func _on_Button2_pressed():
	get_tree().change_scene("res://Menu.tscn")

