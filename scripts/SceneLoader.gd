extends Node

var current_scene
var main setget _set_main

func _set_main(_main):
	main = _main

func _load_scene(scene):
	if current_scene != null:
		main.remove_child(current_scene)
		
	current_scene = load("res://Scenes/" + scene + ".tscn").instance()
	main.add_child(current_scene)
	print("Loaded scene: " + scene)
