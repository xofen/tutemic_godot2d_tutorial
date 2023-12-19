extends Node2D

@export var speed: float = 25	

func _process(delta):
	position.y -= speed * delta


func _on_area_entered(other_area):
	if other_area.is_in_group("enemy"):
		self.queue_free()
