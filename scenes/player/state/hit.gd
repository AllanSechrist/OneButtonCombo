extends PlayerState

func enter(previous_state_path: String, data := {}) -> void:
	player.animated_sprite_2d.animation_finished.connect(_on_animation_finished)
	player.animated_sprite_2d.play("hit")
	
func exit() -> void:
	player.animated_sprite_2d.animation_finished.disconnect(_on_animation_finished)
	
func _on_animation_finished() -> void:
	finished.emit(RUNNING)
