extends KinematicBody2D


var speed = 135
onready var hp = 5
export var max_hp = 5
var jumpForce = 270
var gravity = 500
onready var weapon = $AnimatedSprite
var mony_player = 0
var mony = 1
var der = 1
var damage = 1
var coins = 0
var skin = 0
var jump = 2
var vel = Vector2()


	


func _physics_process(delta):
	if position.y >= 550:
		get_tree().reload_current_scene()
	
	if Input.is_action_pressed("attac"):
		$AnimationPlayer.play("attac")
		
	
		
	if Input.is_action_pressed("left"):		
		vel.x = -speed
		$AnimatedSprite.flip_h = true 
		
		$zdfbsebsb.position.x = abs($zdfbsebsb.position.x) * -1
		$AnimatedSprite.play("run") and is_on_floor()
	
	elif Input.is_action_pressed("rigth"):
		vel.x = +speed
		$AnimatedSprite.flip_h = false
		$zdfbsebsb.position.x = abs($zdfbsebsb.position.x) * 1
		
		
		$AnimatedSprite.play("run") and is_on_floor()
		
	else:
		vel.x = 0 
		$AnimatedSprite.play("idle")
	if is_on_floor():
		$AnimatedSprite.play( )
		
	else:
		$AnimatedSprite.play("fall")
		
	if vel.y < 0:
		$AnimatedSprite.play("jump")

	if Input.is_action_just_pressed("jump") and is_on_floor():
	
		vel.y = -jumpForce
	
	if vel:
		vel = move_and_slide(vel)
	vel.y += gravity * delta
		
	vel = move_and_slide(vel, Vector2.UP)	

func add_coin():
	Global.kybk()
	coins += 1 
	print(coins)

func kill_VIKa():
	hp -= damage
	print("hp:",hp)
	if hp < 1:
		get_tree().reload_current_scene()
		

func add_hp():
	if hp == max_hp:
		hp += 0
	else:
		hp += 1


	
