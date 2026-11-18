extends Node2D

var car_scene: PackedScene = preload("res://car.tscn")

func _on_timer_timeout() -> void:
	var randloc = $SpawnLocations.get_children().pick_random()
	var car = car_scene.instantiate()

	car.global_position = randloc.position

	$Cars.add_child(car)
