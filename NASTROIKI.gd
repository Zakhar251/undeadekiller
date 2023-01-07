extends Control


func _process(delta):
	if $LineEdit.text == "Za4aR! 80509" and Global.promocod == 1:
		Global.promocod -= 1
		Global.kybok += 0
		Global.kybki += 100000
		Global.red_mony += 0
		Global.blu_mony += 0
		Global.gems += 100000



func _on_Exit_pressed():
	get_tree().change_scene("res://Menu.tscn")
	
func save():
	Fs.save_data('hello.txt', {
		'pers': Global.pers,
		'mony': Global.kybki,
		'kybok': Global.kybok,
		'red_mony': Global.red_mony,
		'blu_mony': Global.blu_mony,
		'gems': Global.gems,
		'freecoin' : Global.freecoin,
		'freecoin1' : Global.freecoin1,
		'freecoin2' : Global.freecoin2,
		'free_vika': Global.free_vika,
		'promocod' : Global.promocod,
		'Vika' : Global.vika,
		'level2' : Global.level2,
		'level3' : Global.level3,
		'level4' : Global.level4,
		'level5' : Global.level5,
		'levelMaik' : Global.levelMaik1,
		'levelVika' : Global.levelVika
		
	})
	
func loade():
	var data = Fs.load_data('save.dat')
	if data.levelVika != 0:
		Global.levelVika = data.levelVika
	Global.kybki = data.mony
	Global.kybok = data.kybok
	Global.red_mony = data.red_mony
	Global.blu_mony = data.blu_mony
	Global.gems = data.gems
	Global.vika = data.Vika
	Global.pers = data.pers
	Global.freecoin = data.freecoin
	Global.freecoin1 = data.freecoin1
	Global.freecoin2 = data.freecoin2
	Global.free_vika = data.free_vika
	Global.promocod = data.promocod
	Global.level2 = data.level2
	Global.level3 = data.level3
	Global.level4 = data.level4
	Global.level5 = data.level5
	if data.levelMaik != 0:
		Global.levelMaik1 = data.levelMaik



func _on_Save_pressed():
	save()


func _on_load_pressed():
	loade()
