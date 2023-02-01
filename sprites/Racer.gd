extends Area2D

var stats = []
signal racer_click(stats)

func _ready():
	generate_stats()
	print("Racer Generated: " + self.name)
	print(stats)
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat1"), "update_stats")
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat2"), "update_stats")
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat3"), "update_stats")
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat4"), "update_stats")
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat5"), "update_stats")

func generate_stats():
	stats = []
	for i in range(0, Constants.MAX_STATS):
		stats.append(Constants.rng.randf_range(Constants.MIN_STAT, Constants.MAX_STAT))
		
func _on_Area2D_input_event(viewport : Node, event : InputEvent, shape_idx):
	if event is InputEventMouseButton \
	and event.button_index == BUTTON_LEFT \
	and event.pressed:
		print("emitting signal racer_click(" + stats as String + ")")
		emit_signal("racer_click", stats)
