extends Sprite

class_name Projectile

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

var direction: Vector2


# Called when the node enters the scene tree for the first time.
func _ready():
	#pass
	set_physics_process(false)

func set_starting_values(starting_position:Vector2, direction:Vector2):
	global_position = starting_position
	self.direction = direction
	set_physics_process(true)
	
func _physics_process(delta):
	#position.x += 50 * delta
	position += direction*50*delta
# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
