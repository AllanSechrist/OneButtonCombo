extends Node2D
class_name Enemy

@onready var animated_sprite_2d: AnimatedSprite2D = $AnimatedSprite2D

@export var data: EnemyData

func _ready() -> void:
	animated_sprite_2d.sprite_frames = data.frames
	animated_sprite_2d.play("walk")
