extends KinematicBody2D

var speed = 150
onready var hp = 5
export var max_hp = 5
var jumpForce = 270
var gravity = 500
onready var weapon = $Weapon
var mony_player = 0
var mony = 1
var der = 1
var damage = 1
var coins = 0
var skin = 0
var animate_attac


var vel = Vector2()



func skin():
	pass


func _physics_process(delta):
					
	if position.y >= 550:
		get_tree().reload_current_scene()
	
	if Input.is_action_pressed("attac"):
		animate_attac = rand_range(1, 3)
		print(animate_attac)
		$Animate228.play("swing")
		
	if Input.is_action_pressed("left"):
		vel.x = -speed
		$Sprite.flip_h = true and ($Sprite.position.x) +16
		$Weapon.position.x = abs($Weapon.position.x) * -1
		
		$Sprite.play("run") and is_on_floor()
		
	
		
		
		
		
	elif Input.is_action_pressed("rigth"):
		vel.x = +speed
		$Sprite.flip_h = false
		$Weapon.position.x = abs($Weapon.position.x) * 1
		$Sprite.play("run") and is_on_floor()
		
	else:
		vel.x = 0 
		$Sprite.play("idle")
	if is_on_floor():
		$Sprite.play( )
		
	else:
		$Sprite.play('jump2')
	if vel.y < 0:
		$Sprite.play("jump")
		
		
	
	
		
	
	if Input.is_action_just_pressed("jump") and is_on_floor():
	
		vel.y = -jumpForce
	
		
		
		
	if vel:
		vel = move_and_slide(vel)
	vel.y += gravity * delta
	
	
		
		
	vel = move_and_slide(vel, Vector2.UP)	
	

func add_coin():
	coins += 1 
	print(coins)





