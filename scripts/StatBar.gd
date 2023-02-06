extends HBoxContainer

export var index = 0

func _ready():
	pass

func set_name(var name : String):
	$StatText.text = name

func set_bar_width(var size : float):
	$StatBar.rect_size.x = size

func update_stats(stats):
	if stats == null:
		set_bar_width(0)
		return
	
	print(stats[index])
	set_bar_width(stats[index] * 20)
