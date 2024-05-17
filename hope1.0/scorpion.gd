extends Node2D

const speed = 60

var direction = 1
@onready var right = $direita
@onready var left = $esquerda

##Fazer o inimigo bater do lado para outro
func _process(delta):
	if right.is_colliding():
		direction = -1
	if left.is_colliding():
		direction = 1
	
	position.x += speed * delta
