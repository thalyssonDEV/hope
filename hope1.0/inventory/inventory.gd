extends Resource

class_name Inv

signal update 

@export var slots:Array[InvSlot]

#Função que irá fazer o processo de inserir um item e esse item será inserido no inventario
func insert(item:InvItem):
	var itemslots = slots.filter(func(slot): return slot.item == item)
	if !itemslots.is_empty():
		itemslots[0].amount += 1
		Global.apple_nums += 1
		
	else:
		var empyslots = slots.filter(func(slot): return slot.item == null)
		if ! empyslots.is_empty():
			empyslots[0].item = item
			empyslots[0].amount = 1
	update.emit()
