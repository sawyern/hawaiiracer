extends Node

var main setget _set_main

func _set_main(_main):
	main = _main

func _start_bgm():
	main.get_node("BGMPlayer").playing = true
	
func _stop_bgm():
	main.get_node("BGMPlayer").playing = false
