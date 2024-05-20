extends Area2D


func _on_body_entered(body):
	if body is Player:
		var ui = Global.uiNode
		ui.visible = true
		var _dialog: Array[String] = [
			"Ola",
			"Oq fazes aq"
		]
		ui.show_dialog(_dialog)
