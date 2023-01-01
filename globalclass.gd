extends Node


var pers = 1
var kybki = 0
var freecoin = 1
var freecoin1 = 1
var freecoin2 = 1
var red_mony = 0
var blu_mony = 0
var gems = 0
var vika = false
var porrtal = false
var free_vika = 1
var kybok = 0
var promocod = 1
var level2 = false
var level3 = false
var level4 = false
var level5 = false

func portal():
	porrtal = true
	
	
func kybk():
	kybki = kybki + 1
	print("монетки",kybki)

func person():
	if pers < 2:
		pers = pers + 1
		print ("у тебя ", pers ," персонажей")
	else:
		print("у тебя все персонажы")
		

