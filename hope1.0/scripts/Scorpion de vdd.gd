extends CharacterBody2D
class_name Scorpion
@onready var animation_scorpion = $AnimatedSprite2D

var damage = 35;
const SPEED = 140.0

var direction = 1

@onready var ray_cast_right = $RayCast_right
@onready var ray_cast_left = $RayCast_left

func _process(delta):
		if ray_cast_right.is_colliding():
			direction = -1
		if ray_cast_left.is_colliding():
			direction = 1
		position.x += direction * SPEED * delta
		if direction > 0:
			animation_scorpion.flip_h = true
		if direction < 0:
			animation_scorpion.flip_h = false

func _on_area_2d_body_entered(body):
	if body is Player:
		body.takeDamage(damage)
