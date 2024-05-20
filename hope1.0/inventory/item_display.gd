extends Panel

@onready var item_visual: Sprite2D = $CenterContainer/Panel/item_display

func update(item : InvItem):
	#(portiguês)Se não tiver nem um item,enão não irá aparecer
	#(inglês)
	if ! item:
		item_visual.visible = false
	#(portiguês)Mas se tiver, então irá aparecer
	#(inglês)
	else:
		item_visual.visible = true
		item_visual.texture = item.texture
