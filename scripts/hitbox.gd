extends Area3D
class_name Hitbox

@export var cur_damage = 1
## Whether or not the hitbox is active
@export var DEBUG_IS_ACTIVE = false

##Initializes hitbox just in case and for debugging
func _on_ready() -> void:
	set_active(DEBUG_IS_ACTIVE)

##Call this for attacks
func set_active(boolean: bool):
	for child in get_children():
		if child is not CollisionShape3D: continue
		
		child.disabled = not boolean

func _on_area_entered(area: Area3D) -> void:
	if area is Hurtbox:
		area._Damage(cur_damage)
		print("Hit!")
