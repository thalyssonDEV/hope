extends Panel

@onready var item_visual: Sprite2D = $CenterContainer/Panel/item_display

func update(slot : InvSlot):
	#(portiguês)Se não tiver nem um item,enão não irá aparecer
	#(inglês)
	if ! slot.item:
		item_visual.visible = false
	#(portiguês)Mas se tiver, então irá aparecer
	#(inglês)
	else:
		item_visual.visible = true
		item_visual.texture = slot.item.texture
