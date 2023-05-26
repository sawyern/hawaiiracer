extends Button

var dfont : DynamicFont

func _ready():
	set_font()
	set_back()

func set_font():
	dfont = DynamicFont.new()
	dfont.font_data = load("res://fonts/" + Constants.FONT_HEAD)
	self.add_font_override("font", dfont)

func set_back():
	var styleNormal = StyleBoxFlat.new()
	styleNormal.bg_color = Constants.theme.BUTTON_NORMAL
	
	var styleHover = StyleBoxFlat.new()
	styleHover.bg_color = Constants.theme.BUTTON_HOVER
	
	var styleClick = StyleBoxFlat.new()
	styleClick.bg_color = Constants.theme.BUTTON_CLICK
	styleClick.set_border_width_all(4)
	styleClick.border_blend = true
	styleClick.border_color.a = 0.5
	
	self.add_stylebox_override("normal", styleNormal)
	self.add_stylebox_override("hover", styleHover)
	self.add_stylebox_override("pressed", styleClick)
