extends Label

export var size = 16
var dfont : DynamicFont

func _ready():
	dfont = DynamicFont.new()
	dfont.font_data = load("res://fonts/" + Constants.FONT)
	dfont.size = self.size
	self.add_font_override("font", dfont)
