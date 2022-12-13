extends Control
var hp = 4
var damage = 1

func hp3():
	$TextureRect4.queue_free()

func hp2():
	$TextureRect4.queue_free()
	$TextureRect3.queue_free()

func hp1():
	$TextureRect4.queue_free()
	$TextureRect3.queue_free()
	$TextureRect2.queue_free()
	


	
