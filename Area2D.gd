extends Area2D

 
export (int) var damage := 10
export var der = 1

func attac():
	$Animate228.play("swing")
		

func _on_Weapon_body_entered(body):
	if body.has_method("handle_hit"):
		body.handle_hit(damage)
