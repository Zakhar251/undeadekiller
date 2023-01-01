extends CanvasLayer


func _ready():
	pass


func _on_TextureButton_pressed():
	Global.kybok += 6
	Global.level3 = true
	get_tree().change_scene("res://Menu.tscn")
	get_tree().paused = false
	Global.porrtal = false

