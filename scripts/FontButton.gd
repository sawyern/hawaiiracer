extends Button

var dfont : DynamicFont

func _ready():
	set_font()

func set_font():
	dfont = DynamicFont.new()
	dfont.font_data = load("res://fonts/" + Constants.FONT)
	self.add_font_override("font", dfont)
