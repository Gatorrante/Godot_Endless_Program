extends Node2D

@onready var _area_next_level = $Area2D

func _ready():
	_area_next_level.body_entered.connect(_load_nex_level)


# Cargamos el siguiente nivel (la siguiente escena)
func _load_nex_level(body):
	if body.is_in_group("player"):
		var scene = "res://scenes/game/levels/rooms/scene_4/scene_4.tscn"
		SceneTransition.change_scene(scene)

