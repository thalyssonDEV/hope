extends Node
var hp : int = 100
var playerMaxHealth: int = 100
var uiNode = null
var itemDisplay = null;
var invUi = null
var playernode = null
var maxhealth = 100
var healthBarNode = null
var slot_amount: int
var button = null
@onready var invPlay = preload("res://inventory/inventy_player.tres");

##irá resetar o inventario
func resete_inventario() -> void:
	button.disabled =true;
	var slot = invPlay.slots
	for item in range(slot.size()):
		slot[item].amount = 0
		slot[item].item = null
