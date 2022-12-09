extends Node

func _ready():
	$Player.play()

func _on__pressed():
	get_tree().change_scene("res://Menu.tscn")
