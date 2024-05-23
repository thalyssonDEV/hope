extends CharacterBody2D
class_name Vulture
@onready var animation_vulture = $AnimatedSprite2D

var damage = 25
const SPEED = 120.0

var direction = 1

@onready var ray_cast_rightt  = $RayCast_right
@onready var ray_cast_leftt = $RayCast_left

func _process(delta):
		if ray_cast_rightt.is_colliding():
			direction = -1
		if ray_cast_leftt.is_colliding():
			direction = 1
		position.x += direction * SPEED * delta
		if direction > 0:
			animation_vulture.flip_h = true
		if direction < 0:
			animation_vulture.flip_h = false

func _on_area_2d_body_entered(body):
	if body is Player:
		body.takeDamage(damage)
