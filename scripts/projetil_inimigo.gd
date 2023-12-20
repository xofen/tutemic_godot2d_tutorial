extends Area2D

@export var speed: float = 20

func _process(delta):
	position.y += speed * delta


func _on_area_entered(other_area):
	if other_area.is_in_group("player"):
		self.queue_free()
		GameState.score += 74.5346135645675672456724572456724672467
