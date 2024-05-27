extends Node

#dicionario responsavel por identificar o item e a função que será executada
var Items_funcs: Dictionary = {
	"apple" : Callable(self,"use_apple"),
	"madeira" : Callable(self,"use_wood")
}

#função responsavel por executar a função identificada pelo Items_funcs
func use_item(item: String) -> bool:
	var func_ref: Callable = Items_funcs.get(item)
	return func_ref.call()
	

#função responsavel para o uso da maça
func use_apple() -> bool:
	if Global.playernode.hp < Global.playerMaxHealth:
		Global.playernode.hp = min(Global.playernode.hp + 15,Global.playerMaxHealth)
		Global.healthBarNode.init_health(Global.playernode.hp)
		return true;
	return false;
	

#funçâo responsavel para o uso da madeira
func use_wood():
	print('collect wood')
	return 0;
