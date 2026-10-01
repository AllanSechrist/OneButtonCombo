extends PlayerState

func enter(previous_state_path: String, data := {}) -> void:
	player.animated_sprite_2d.animation_finished.connect(_on_animation_finished)
	player.animated_sprite_2d.play("attack")
	
func handle_input(_event: InputEvent) -> void:
	if _event.is_action_pressed("hit"):
		finished.emit(HIT)

func exit() -> void:
	player.animated_sprite_2d.animation_finished.disconnect(_on_animation_finished)
	
func _on_animation_finished() -> void:
	finished.emit(RUNNING)
