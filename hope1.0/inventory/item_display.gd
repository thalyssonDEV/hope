extends Panel

@onready var item_visual: Sprite2D = $CenterContainer/Panel/item_display
@onready var amount_text: Label = $CenterContainer/Panel/Label
var name_item = ''
func update(slot : InvSlot):
	#(portiguês)Se não tiver nem um item,enão não irá aparecer
	#(inglês)
	if ! slot.item:
		item_visual.visible = false
		amount_text.visible = false
		$Button.disabled = true
	#(portiguês)Mas se tiver, então irá aparecer
	#(inglês)
	else:
		name_item = slot.item.name
		item_visual.visible = true
		item_visual.texture = slot.item.texture
		$Button.disabled = false
		if slot.amount > 1:
			amount_text.visible = true
		amount_text.text = str(slot.amount)
