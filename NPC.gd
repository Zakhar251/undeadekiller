extends KinematicBody2D

const SPEED =75
const GRAVITY = 100
const FLOOR = Vector2(0 , -1)
onready var hp = 30
onready var max_hp = 30
var vel = Vector2()
var der = 1
var damage = 1
var is_alive = true


	
func handle_hit(damage: int):
	hp -= damage
	$Area2D/AnimationPlayer.play("hp")
	
	print("enemy was hit! current health:" + str(hp))
	if hp <1:
		is_alive = false
		vel.x = 0		
		$Area2D/AnimationPlayer.play("death")
		
func _der():
		der *= -1
		$Goblin.flip_h = !$Goblin.flip_h
func _physics_process(delta):
	
		
			
	if is_alive == true:
		vel.x = SPEED * der
		$Goblin.play("run")
	vel.y += (GRAVITY * delta)
	move_and_slide(vel, FLOOR)
	if is_on_wall():
		_der()

func _on_Goblin_animation_finished():
	if $Goblin.animation == "death":
		queue_free() 
