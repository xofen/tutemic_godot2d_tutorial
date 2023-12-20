extends Node2D

@export var speed: float = 20

@export var projetil_inimigo_tcns: PackedScene

func atirar_agora():
	var tiro = projetil_inimigo_tcns.instantiate()
	add_sibling(tiro)
	tiro.position = self.position
	print("BOOOMBA!")

func _process(delta):
	position.x += speed * delta
	
	var rand_tiro = randi_range(20, 1000)
	if round(position.x) == rand_tiro:
		atirar_agora()


func _on_area_entered(other_area):
	if other_area.is_in_group("player"):
		self.queue_free()
		
		GameState.score += 152.817341278364612973691273465912734651
