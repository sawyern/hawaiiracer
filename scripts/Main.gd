extends Node

export var skin = Constants.SKIN.MAKAHIKI

func _ready():
	SoundManager.main = self
	SceneLoader.main = self
	_restart()

func _restart():
	SceneLoader._load_scene("Welcome")
	SoundManager._start_bgm()