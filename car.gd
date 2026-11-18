extends Area2D

const speed: int = 300
#because main node in game scene is 90 degrees, start with vector2.UP
var direction: Vector2 = Vector2.UP

var textures = [preload("res://assets/car_black.png"),
preload("res://assets/car_red.png"),
preload("res://assets/car_blue.png"),
preload("res://assets/car_yellow.png")
]
func _ready() -> void:
	var randCar = textures.pick_random()
	$Sprite2D.texture = randCar

	if position.y < 0:
		direction = Vector2.DOWN
		$Sprite2D.flip_h = true


func _process(delta: float) -> void:
	position += (speed * direction * delta)

func _on_body_entered(body: Node2D) -> void:
	if "hit" in body:
		body.hit()



func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	queue_free()
