extends Label

func _process(delta):
	self.text = "ponto: " + str(GameState.score)
