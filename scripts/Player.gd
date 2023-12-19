extends Node2D

@export var projetil_tcns: PackedScene

func _process(delta):
	var mouse_pos = get_global_mouse_position()
	position.x = mouse_pos.x


	#pseudocódigo
	#maluco clica -> sai a setinha
	if Input.is_action_just_pressed("fire"):
		var tiro = projetil_tcns.instantiate()
		add_sibling(tiro)
		tiro.position = self.position
		GameState.score -= 73.5346135645675672456724572456724672467


func _on_area_entered(other_area):
	if other_area.is_in_group("enemy"):
		self.queue_free()
		
		GameState.is_game_over = true
