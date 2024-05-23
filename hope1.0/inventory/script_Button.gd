extends Button

#acionamento do botão e chamada da FuncItems(função responsavel pela funcionalidade do item)
func _on_pressed():
	var name_id = get_parent().name_item
	var quantidade_item = get_parent().quantidade_item
	print("name: ",name_id,"quantidade de item",quantidade_item)
	FuncItems.use_item(name_id)
	
