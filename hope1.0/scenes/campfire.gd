extends Area2D

@onready var animation_campfire = $AnimatedSprite2D
var madeira_camfire = 10

func _on_body_entered(body):
	var slot = Global.invPlay.slots
	if body is Player:
		var index  = procurarIndexSlot("madeira",slot)
		print("Name item: ",slot[index].item.name," amount: ", slot[index].amount)
		if slot[index].item.name == "madeira":
			if slot[index].amount == madeira_camfire:
				animation_campfire.play("fire")

func procurarIndexSlot(name, slot):
	for i in range(slot.size()):
		if slot[i].item.name == name:
			return i;
	
