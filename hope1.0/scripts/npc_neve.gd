extends Area2D

class_name npc_neve

func _on_body_entered(body):
	if body is Player:
		var ui = Global.uiNode
		ui.visible = true
		
		var _dialog: Array[String] = [
			"Caçadora: Quem é você?",
			"Você: Estou em busca de um local chamado 'Cidade da Luz',
			poderia me ajudar?",
			"Caçadora: Aquele local fictício criado por um grupo de lunáticos?,
			não é a primeira vez que me perguntam",
			"Você: Como assim?",
			"Caçadora: Bom... o último a ir atrás desse lugar seguiu por
			aquela direção a uns 3 meses, mas nunca mais voltou...",
			"Vocẽ: Isso significa que ele pode ter encontrado",
			"Caçadora: Ou então que foi degolado por um escorpião gigante...",
			"Você: Escorpião gigante?",
			"Caçadora: Desde que a terra se tornou inabitável por anos,
			a radiação tomou conta de tudo, as criaturas vivas atualmente
			não são muito amigáveis",
			"Caçadora: Além disso, quase toda vegetação está morta, economize
			se não quiser morrer de fome",
			"Caçadora: De qualquer forma, você também
			irá enfrentar um frio mortal, então certifique-se de ter alguma proteção",
			"Caçadora: Tem certeza que vale a pena se arriscar
			por algo incerto?, garoto",
			"Você: Não tenho mais nada a perder... além disso, ainda me resta
			um resquício de esperança",
			"Caçadora: Se essa é a sua decisão final, então boa sorte..."
		]
		ui.show_dialog(_dialog)
