extends "res://scripts/FontLoader.gd"

var trial : int = 1

func _ready():
	trial = 1
	update_text()

func reset():
	trial += 1
	update_text()
	
func update_text():
	self.text = "Race # " + trial as String

func _on_NewRaceButton_pressed():
	reset()
