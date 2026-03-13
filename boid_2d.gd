extends CharacterBody2D



@export var speed = 200.0
@export var rotation_speed = 1.5

@onready var view_size = get_viewport_rect().size

var rotation_direction = 0

func get_bearing():
	velocity = transform.x * speed

func _physics_process(delta: float) -> void:
	get_bearing()
	rotation += rotation_direction * rotation_speed * delta
	move_and_slide()


func _on_visible_on_screen_notifier_2d_screen_exited() -> void:
	position.x = wrapf(position.x, 0, view_size.x)
	position.y = wrapf(position.y, 0, view_size.y)
