extends Node2D

@export var enemy_tscn: PackedScene

func spawn_enemy_ship():
	var new_enemy = enemy_tscn.instantiate()
	add_child(new_enemy)
	
	new_enemy.position.x = -15
	
	var rand_y = randf_range(40, 140)
	new_enemy.position.y = rand_y

