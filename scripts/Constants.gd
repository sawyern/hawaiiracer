extends Node2D


const FONT = "Babylon.ttf"

const MAX_STATS = 3
const MIN_STAT = 1
const MAX_STAT = 10

enum SKIN {
	MAKAHIKI,
	TRADITIONAL
}

enum LEVEL {
	L1,
	L2,
	L3
}

var rng : RandomNumberGenerator

func _ready():
	rng = RandomNumberGenerator.new()
	rng.randomize()
