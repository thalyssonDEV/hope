extends Button


func _on_pressed():
	var name_id = get_parent().name_item
	FuncItems.use_item(name_id)
