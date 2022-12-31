extends Control


func _process(delta):
	if $LineEdit.text == "DIMA_PIDR228" and Global.promocod == 1:
		Global.promocod -= 1
		Global.kybok += 999
		Global.kybki += 9999
		Global.red_mony += 9999
		Global.blu_mony += 9999
		Global.gems += 9999
		Global.vika = true
		Global.free_vika -= 1
		Global.pers += 1


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
		'Vika' : Global.vika
	})
	
func loade():
	var data = Fs.load_data('save.dat')
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

func _on_Save_pressed():
	save()


func _on_load_pressed():
	loade()
