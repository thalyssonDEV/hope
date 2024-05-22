extends CharacterBody2D
class_name Hyena
@onready var player = $"."


var damage = 30;
const SPEED = 150.0

## Acionado quando um corpo entra em contato com a hiena.
func _on_area_2d_body_entered(body):
	if body is Player:
		body.takeDamage(damage)
