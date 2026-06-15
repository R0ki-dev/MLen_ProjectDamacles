extends Area3D

@export var GateToOpen : Node3D

func _on_body_entered(body: Node3D) -> void:
	if not body.is_in_group("Player"):
		return
	print("key collected")
	GateToOpen.visible = false
	GateToOpen.use_collision = false
