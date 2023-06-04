extends Area2D

var stats = []
signal racer_click(stats)
var speed = 0
var race_over = false

func _ready():
	race_over = false
	generate_stats()
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat1"), "update_stats")
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat2"), "update_stats")
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat3"), "update_stats")
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat4"), "update_stats")
	self.connect("racer_click", get_parent().get_node("Menu/Stats/VBoxContainer/Stat5"), "update_stats")

func _process(delta):
	if race_over: return
	self.position.x += speed
	if (self.position.x > 650 and speed != 0):
		get_parent().call("win_race")
	
func generate_stats():
	stats = []
	for i in range(0, Constants.MAX_STATS):
		stats.append(Constants.rng.randf_range(Constants.MIN_STAT, Constants.MAX_STAT))

func _on_Button_pressed():
	print("emitting signal racer_click(" + stats as String + ")")
	emit_signal("racer_click", stats)
	get_parent().call("deselect_all")

func _exit_tree():
	emit_signal("racer_click", [0, 0, 0, 0, 0])

func race():
	speed = get_speed(Globals.level)	
	
func get_speed(level) -> float:
	if level == 1:
		return level1()
	if level == 2:
		return level2()
	if level == 3:
		return level3()
	if level == 4:
		return level4()
	if level == 5:
		return level5()
	if level == 6:
		return level6()	
	if level == 7:
		return level7()
	print("Invalid level, defaulting to level 1")
	return level1()

# High Vigor
func level1() -> float:
	return stats[1]/10

# High 	
func level2() -> float:
	return stats[0]/10
	
func level3() -> float:
	return (Constants.MAX_STAT - stats[0] + 1)/10
	
func level4() -> float:
	return stats[2]/10
	
func level5() -> float:
	return (stats[0]/10 + stats[1]/10)/2

func level6() -> float:
	return (Constants.MAX_STAT - stats[1] + 1)/10
	
func level7() -> float:
	return (level1() + (Constants.MAX_STAT - stats[2] + 1)/10)/2

func stop():
	speed = 0
	race_over = true


func _on_Button_mouse_entered():
	pass # Replace with function body.
