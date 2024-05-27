extends Area2D

@onready var animation_campfire = $AnimatedSprite2D
var madeira_camfire = 10


func _on_body_entered(body):
	var slot = Global.invPlay.slots
	if body is Player:
		var index  = procurarIndexSlot("madeira", slot)
		if index == -1:
			print("Madeira não encontrada.")
			return
		print("Name item: ",slot[index].item.name," amount: ", slot[index].amount)
		if slot[index].item.name == "madeira":
			if slot[index].amount >= madeira_camfire:
				print("quantidade de madeira: ", slot[index].amount)
				animation_campfire.play("fire")
				Global.resete_inventario();
			elif slot[index].amount < madeira_camfire:
				Global.hp = 100
				get_tree().change_scene_to_file("res://scenes/picolé.tscn")
			

func procurarIndexSlot(_name,slot) -> int:
	for i in range(slot.size()):
		var _thisSlot = slot[i];
		if _thisSlot.item != null and _thisSlot.item.name == _name:
			print("Item %s encontrado no slot %s." % [_name, i])
			return i;
	print("Percorremos todos os slots e nao encontramos um item %s." % [_name])
	return -1
