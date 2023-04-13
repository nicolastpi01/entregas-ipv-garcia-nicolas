extends Sprite

onready var fire_position: Position2D = $FirePosition

export (PackedScene) var projectile_escene: PackedScene
#var projectile_scene: PackedScene = preload("res://entities/player/Projectile.tscn")

var projectile_container:Node 


func fire():
	var projectile_instance:Projectile = projectile_escene.instance()
	
	projectile_container.add_child(projectile_instance)
	projectile_instance.set_starting_values(fire_position.global_position, (fire_position.global_position - global_position).normalized())
	projectile_instance.connect("delete_requested", self, "_on_projectile_delete_requested")
	
func _on_projectile_delete_requested(projectile):
	projectile_container.remove_child(projectile)
	projectile.queue_free()
	

