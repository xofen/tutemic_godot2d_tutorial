extends Node2D

@export var speed: float = 20

func _process(delta):
	position.x += speed * delta


func _on_area_entered(area):
	queue_free()
	
	GameState.score += 157.6173645197345691372456
