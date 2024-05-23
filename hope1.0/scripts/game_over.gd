extends CanvasLayer


#Called when the node enters the scene tree for the first time.
func _ready():
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
