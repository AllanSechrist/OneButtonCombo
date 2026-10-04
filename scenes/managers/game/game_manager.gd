extends Node2D
class_name GameManager

@onready var player: Player = $Player
@onready var camera_2d: Camera2D = $Camera2D
@onready var enemy_manager: EnemyManager = $EnemyManager
@onready var follow: RemoteTransform2D = player.get_node("CameraTransform")

func _ready() -> void:
	follow.remote_path = follow.get_path_to(camera_2d)
