extends CharacterBody2D


@export var speed = 200.0
@export var rotation_speed = 1.5

var rotation_direction = 0

func get_bearing():
	velocity = transform.x * speed

func _physics_process(delta: float) -> void:
	get_bearing()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()
