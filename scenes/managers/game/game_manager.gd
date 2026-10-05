extends Node2D
class_name GameManager

@onready var player: Player = $Player
@onready var camera_2d: Camera2D = $Camera2D
@onready var enemy_manager: EnemyManager = $EnemyManager

func _ready() -> void:
	var viewport_size := get_viewport_rect().size
	camera_2d.position = Vector2(viewport_size / 2)
