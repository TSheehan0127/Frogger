extends Control

func _ready() -> void:
	$ColorRect/Label.text = Globals.title_message

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://Game.tscn")
