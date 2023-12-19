extends Label

func _process(delta):
	if GameState.is_game_over:
		self.visible = true


	if Input.is_action_just_pressed("ui_accept") and GameState.is_game_over:
		get_tree().reload_current_scene()
		GameState.is_game_over = false
		GameState.score = 0
