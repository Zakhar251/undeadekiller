extends Node


var pers = 1
var kybki = 0
var freecoin = 1






func kybk():
	kybki = kybki + 1
	print("монетки",kybki)

func person():
	if pers < 4:
		pers = pers + 1
		print ("у тебя ", pers ," персонажей")
	else:
		print("у тебя все персонажы")
		



