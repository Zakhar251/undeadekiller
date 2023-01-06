extends Area2D

 
export (int) var damage := 10
export var der = 1



func _on_Weapon_body_entered(body):
	if body.name == 'NPC' or body.name =='NPC2' or body.name =='NPC3' or body.name =='NPC4'or body.name =='NPC5'or body.name =='NPC6'or body.name =='NPC7'or body.name =='NPC8'or body.name =='NPC9'or body.name =='NPC10'or body.name =='NPC11'or body.name =='NPC12'or body.name =='NPC13'or body.name =='NPC14'or body.name =='NPC15'or body.name =='NPC16'or body.name =='NPC17'or body.name =='NPC18'or body.name =='NPC19'or body.name =='NPC20'or body.name =='NPC21'or body.name =='NPC22'or body.name =='NPC23'or body.name =='NPC24'or body.name =='NPC25'or body.name =='NPC26'or body.name =='NPC27'or body.name =='NPC28'or body.name =='NPC29':
		body.handle_hit()
