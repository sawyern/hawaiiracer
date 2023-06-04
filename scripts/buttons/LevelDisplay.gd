extends "res://scripts/FontLoader.gd"


func _ready():
	self.text = "Level: " + Globals.level as String
