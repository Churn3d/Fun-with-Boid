extends Node2D

@export var boid2d_scene: PackedScene

var boid = boid2d_scene.instantiate()
var target = position

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _input(event):
	if event.is_action_pressed(&"click"):
		target = get_global_mouse_position()
		boid.initialize(target.position,)
