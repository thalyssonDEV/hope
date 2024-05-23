extends CanvasLayer

func _ready():
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://scenes/mundo.tscn")

func _ready():
	await get_tree().create_timer(1).timeout
	get_tree().change_scene_to_file("res://scenes/game_over.tscn")
