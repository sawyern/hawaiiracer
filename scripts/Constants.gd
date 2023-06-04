extends Node2D


const FONT = "Babylon.ttf"
const FONT_HEAD = "Lalezar/Lalezar-Regular.ttf"
const FONT_BODY = "Nunito/Nunito-VariableFont_wght.ttf"

const MAX_STATS = 5
const MIN_STAT = 1
const MAX_STAT = 10

class RacerTheme:
	const SIDEBAR_BACK = "#005A70"
	const STAT_BAR = "#BAE2E8"
	const BUTTON_NORMAL = "#016F77"
	const BUTTON_HOVER = "#003F4E"
	const BUTTON_CLICK = "#003F4E"

var theme : RacerTheme = RacerTheme.new()

enum SKIN {
	MAKAHIKI,
	TRADITIONAL
}

var LEVEL_NUM_BARS = [
	[],
	[true, true, false, false, false],
	[true, true, false, false, false],
	[true, true, false, false, false],
	[true, true, true, false, false],
	[true, true, true, false, false],
	[true, true, true, false, false],
	[true, true, true, false, false],
]

var rng : RandomNumberGenerator

func _ready():
	rng = RandomNumberGenerator.new()
	rng.randomize()
