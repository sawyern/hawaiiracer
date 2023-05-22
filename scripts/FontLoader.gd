extends Label

export var size = 16
export(String, "Header", "Body") var font

export var color = Color.white
var dfont : DynamicFont

func _ready():
	dfont = DynamicFont.new()
	
	var selected_font = Constants.FONT_BODY
	if font == "Header":
		selected_font = Constants.FONT_HEAD
		
	dfont.font_data = load("res://fonts/" + selected_font)
	dfont.size = self.size
	self.add_font_override("font", dfont)
	self.add_color_override("font_color", color)
