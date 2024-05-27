extends Button

#acionamento do botão e chamada da FuncItems(função responsavel pela funcionalidade do item)
func _on_pressed():
	var name_id = get_parent().name_item
	var quantidade_item = get_parent().quantidade_item
	print("name: ",name_id,"quantidade de item: ",quantidade_item)
	var result = FuncItems.use_item(name_id)
	if result:
		removeItem(name_id)
		
## Função para decrementar item do inventário caso tenha sido usado.
func removeItem(nameId):
	var slot = Global.invPlay.slots;
	for item in range(slot.size()):
		if slot[item].item.name == nameId:
			slot[item].amount -= 1;
			get_parent().update(slot[item])
			return;
		

