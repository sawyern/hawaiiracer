extends "res://scripts/buttons/SceneLoadButton.gd"

export var level = 1

func _button_pressed():
	scene = "_4_Race"
	Globals.level = level
	._button_pressed()
	print("Level selected: " + Globals.level as String)
