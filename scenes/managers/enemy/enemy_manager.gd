extends Node
class_name EnemyManager

@onready var spawn_point: Marker2D = $"../SpawnPoint"

var enemy_scene := preload("res://scenes/enemy/enemy.tscn")

var enemies: Array

func _ready() -> void:
	var enemy = enemy_scene.instantiate()
	enemy.global_position = spawn_point.global_position
	add_child(enemy)
	enemies = get_children()
