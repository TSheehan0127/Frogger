extends CharacterBody2D

#changing from holding to pressing action
const STEP: int = 32
var direction = Vector2.ZERO


func _physics_process(delta: float) -> void:
	direction = Vector2.ZERO
	if Input.is_action_just_pressed("Right"):
		direction = Vector2.RIGHT
	elif Input.is_action_just_pressed("Left"):
		direction = Vector2.LEFT
	elif Input.is_action_just_pressed("Down"):
		direction = Vector2.DOWN
	elif Input.is_action_just_pressed("Up"):
		direction = Vector2.UP

	if direction != Vector2.ZERO:
		#replaced with move and slide.
		move_and_collide(direction * STEP)

func hit():
	Globals.title_message = "You lose!"
	call_deferred("change_scene")


func change_scene():
	get_tree().change_scene_to_file("res://title_screen.tscn")
