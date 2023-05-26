extends HBoxContainer

export var index = 0

func _ready():
	set_visibility(Constants.LEVEL_NUM_BARS[Globals.level][index])

func set_name(var name : String):
	$StatText.text = name

func set_bar_width(var size : float):
	$StatBar.rect_size.x = size

func set_val(var val : float):
	$StatVal.text = val as String
	
func set_visibility(var visible : bool):
	self.visible = visible

func update_stats(stats):
	if stats == null:
		set_bar_width(0)
		return
	
	print(stats[index])
	set_bar_width(stats[index] * 20)
	set_val(stepify(stats[index], 0.1) * 10)
