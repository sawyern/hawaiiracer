extends ColorRect

export var racer_sprite : String 
export var start_x : int
export var start_y : int
export var num_racers : int

signal start_race()
signal stop_race()

var loaded_racers : Array

const colors = [
	Color.red,
	Color.blue,
	Color.green,
	Color.purple,
	Color.yellow,
	Color.orange,
	Color.hotpink,
	Color.aqua
]

func _ready():
	reset_race()

func reset_race():
	unload_racers()
	for i in range(0, num_racers):
		var racer = load(racer_sprite).instance()
		racer.position.x = start_x
		racer.position.y = start_y - i * 74
		racer.modulate = colors[i]
		self.add_child(racer)
		loaded_racers.append(racer)
		self.connect("deselect_all", racer, "deselect_self")
		self.connect("start_race", racer, "race")
		self.connect("stop_race", racer, "stop")

func unload_racers():
	for i in loaded_racers:
		print("Unloading racer " + i.name)
		i.get_parent().remove_child(i)
	loaded_racers = []

func win_race():
	print ("Emitting stop_race signal")	
	emit_signal("stop_race")

func deselect_all():
	print ("Emitting deselect_all signal")	
	emit_signal("deselect_all")

func _on_NewRaceButton_pressed():
	reset_race()

func _on_StartRaceButton_pressed():
	print ("Emitting start_race signal")
	emit_signal("start_race")
