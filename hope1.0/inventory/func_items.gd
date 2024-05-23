extends Node

var Items_funcs: Dictionary = {
	"apple" : Callable(self,"use_apple")
}

func use_item(item: String):
	var func_ref: Callable = Items_funcs.get(item)
	func_ref.call()

func use_apple():
	print('use a apple')
