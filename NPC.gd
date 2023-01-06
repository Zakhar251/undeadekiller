extends KinematicBody2D

const SPEED =70
const GRAVITY = 100
const FLOOR = Vector2(0 , -1)
var hp = 3
var max_hp = 3
var vel = Vector2()
var der = 1
var damage = 1
var is_alive = true
var is_attac = false
var is_dam = false
var damage_VIKA = 2
var optimiz = true





	
func handle_hit():
	hp-=damage
	$Goblin.play("take hit")
	print("hpNPC" + str(hp))
	is_alive = true
	is_attac = false
	is_dam = false
	if hp <1:
		is_alive = false
		vel.x = 0
		$Goblin.play("death")
	
func _der():
		der *= -1
		$Goblin.flip_h = !$Goblin.flip_h
		
func _physics_process(delta):
	if $attc.current_animation == 'attac':
		return
	if optimiz == true:
		$Goblin.visible = false
		$frek.visible = true
	else:
		$Goblin.visible = true
		$frek.visible = false
	if is_alive == true and is_attac == false and is_dam == false:
		vel.x = SPEED * der
		$Goblin.play("run")
	vel.y += (GRAVITY * delta)
	move_and_slide(vel, FLOOR)
	if is_on_wall():
		_der()

func _on_Goblin_animation_finished():
	if $Goblin.animation == "death":
		queue_free() 
	


	elif $Goblin.animation == "attac":
		is_attac = false
		

func _on_attace_body_entered(body):
	if body.name == "Player":
		is_attac = true
		vel.x = 0
		$attc.play("attac")

func handle_hit_VIKA():
	hp-=damage_VIKA
	$Goblin.play("take hit")
	print("enemy was hit! current health:" + str(hp))
	if hp <1:
		is_alive = false
		vel.x = 0
		$Goblin.play("death")


func _on_attace2_body_entered(body):
	if body.name == "VIKA_player":
		is_attac = true
		vel.x = 0
		$Goblin.play("attac")
		body.kill_VIKa()


func optimizz():
	optimiz = false
	
func optimiz_true():
	optimiz = true
	
func attac():
	Global.attac_goblin = true
	
func hit():
	$Attack_122.monitoring = true
	
func end_of_hit():
	$Attack_122.monitoring = false

func star_walk():
	$Goblin.play("run")
	



func _on_Attack_122_body_entered(body):
	if body.name == 'Player':
		body.kill()


func _on_attace_body_exited(body):
	if body.name == 'Player':
		is_alive = true
		is_attac = false
		is_dam = false

