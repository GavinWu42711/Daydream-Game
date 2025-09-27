extends Node
@export var mob_scene: PackedScene
@export var player_scene: PackedScene
@export var map_scene: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	
	$Player.position = $StartPosition.position
	
	#Start spawning mobs
	$MobTimer.start()
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass	

func _on_mob_timer_timeout() -> void:
	var mob = mob_scene.instantiate()
	
	var playerx = $Player.position.x
	var playery = $Player.position.y
	
	var upperx = playerx + 500
	var lowerx = playerx - 500
	var uppery = playery + 500
	var lowery = playery - 500
	
	mob.position.x = randi() % int(upperx) + int(lowerx)
	mob.position.y = playery

	# Spawn the mob by adding it to the Main scene.
	add_child(mob) # Replace with function body.
