extends Node2D

@export var speed: float = 20

@export var projetil_inimigo_tcns: PackedScene

func _process(delta):
	position.x += speed * delta
	
	if position.x > 5:
		var tiro = projetil_inimigo_tcns.instantiate()
		add_sibling(tiro)
		tiro.position = self.position


func _on_area_entered(other_area):
	if other_area.is_in_group("player"):
		self.queue_free()
