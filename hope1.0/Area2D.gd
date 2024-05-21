extends Area2D

@export var apple: InvItem

func _on_body_entered(body):
	if body is Player:
		print("pegeui maçã")
		body.collect(apple)
		queue_free()
	
