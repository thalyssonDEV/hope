extends Panel

@onready var item_visual: Sprite2D = $CenterContainer/Panel/item_display
@onready var amount_text: Label = $CenterContainer/Panel/Label
var quantidade_item 
var name_item = ''

func _ready():
	Global.itemDisplay = self;

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
		quantidade_item = slot.amount
		name_item = slot.item.name
		item_visual.visible = true
		item_visual.texture = slot.item.texture
		$Button.disabled = false
		if slot.amount > 1:
			amount_text.visible = true
		amount_text.text = str(slot.amount)
			
	if slot.amount <= 0:
		print("item slot menor ou igual a zero")
		item_visual.visible = false
		$Button.disabled = true
		amount_text.visible = false
