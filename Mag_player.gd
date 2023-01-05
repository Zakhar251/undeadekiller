extends KinematicBody2D

var speed = 120
onready var hp = 7
export var max_hp = 7
var jumpForce = 270
var gravity = 500
var mony_player = 0
var mony = 1
var der = 1
var damage = 1
var coins = 0
var skin = 0
var jump = 2
var vel = Vector2()


func _ready():
	pass

func _physics_process(delta):
	if position.y >= 550:
		get_tree().reload_current_scene()
	
	if Input.is_action_pressed("attac"):
		$Sprite.play("attac 1")
	
		
	if Input.is_action_pressed("left"):		
		vel.x = -speed
		$Sprite.flip_h = true and ($Sprite.position.x) +16
		$Sprite.play("run") and is_on_floor()
	
	elif Input.is_action_pressed("rigth"):
		vel.x = +speed
		$Sprite.flip_h = false
		$Sprite.play("run") and is_on_floor()
		
	else:
		vel.x = 0 
		$Sprite.play("idle")
	if is_on_floor():
		$Sprite.play( )
		
	else:
		$Sprite.play("fall")
		
	if vel.y < 0:
		$Sprite.play("gump")

	if Input.is_action_just_pressed("jump") and is_on_floor():
	
		vel.y = -jumpForce
	
	if vel:
		vel = move_and_slide(vel)
	vel.y += gravity * delta
		
	vel = move_and_slide(vel, Vector2.UP)	
