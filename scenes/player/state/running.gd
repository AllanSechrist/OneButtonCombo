extends PlayerState

func enter(previous_state_path: String, data := {}) -> void:
	player.animated_sprite_2d.play("run")
