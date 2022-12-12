extends Button


export var scene = ""
var dfont : DynamicFont

func _ready():
	set_font()
	self.connect("pressed", self, "_button_pressed")

func set_font():
	dfont = DynamicFont.new()
	dfont.font_data = load("res://fonts/" + Constants.FONT)
	self.add_font_override("font", dfont)

func _button_pressed():
	SceneLoader._load_scene(scene)
