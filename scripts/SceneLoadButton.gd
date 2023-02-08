extends "res://scripts/FontButton.gd"

export var scene = ""


func _ready():
	self.connect("pressed", self, "_button_pressed")

func _button_pressed():
	SceneLoader._load_scene(scene)
