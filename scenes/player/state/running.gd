extends PlayerState

func enter(previous_state_path: String, data := {}) -> void:
	player.animated_sprite_2d.play("run")

func handle_input(_event: InputEvent) -> void:
	if _event.is_action_pressed("attack"):
		finished.emit(ATTACKING)
	
	if _event.is_action_pressed("hit"):
		finished.emit(HIT)
