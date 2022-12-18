extends Node2D


const FONT = "Babylon.ttf"

const MAX_STATS = 5
const MIN_STAT = 1
const MAX_STAT = 10

enum SKIN {
	MAKAHIKI,
	TRADITIONAL
}

var rng : RandomNumberGenerator

func _ready():
	rng = RandomNumberGenerator.new()
	rng.randomize()
