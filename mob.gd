extends RigidBody2D

const SPEED = 300

var player 

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	player = get_node("Player")
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	follow_player()

func follow_player() -> void:
	pass
