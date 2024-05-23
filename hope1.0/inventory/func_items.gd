extends Node

#dicionario responsavel por identificar o item e a função que será executada
var Items_funcs: Dictionary = {
	"apple" : Callable(self,"use_apple"),
	"madeira" : Callable(self,"use_wood")
}

#função responsavel por executar a função identificada pelo Items_funcs
func use_item(item: String):
	var func_ref: Callable = Items_funcs.get(item)
	func_ref.call()

#função responsavel para o uso da maça
func use_apple():
	print('use a apple')
	

#funçâo responsavel para o uso da madeira
func use_wood():
	print('collect wood')
