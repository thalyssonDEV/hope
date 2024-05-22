extends CharacterBody2D
class_name Scorpion

var damage = 35;

func _on_area_2d_body_entered(body):
	if body is Player:
		body.takeDamage(damage)
