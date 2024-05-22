extends CanvasLayer

func _on_start_pressed():
	get_tree().change_scene_to_file("res://scenes/mundo.tscn")
	
func _on_exit_pressed():
	get_tree().quit()
