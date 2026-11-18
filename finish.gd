extends Area2D


func change_scene():
	get_tree().change_scene_to_file("res://title_screen.tscn")


func _on_body_entered(body: Node2D) -> void:
	Globals.title_message = "You win!"
	call_deferred("change_scene")
