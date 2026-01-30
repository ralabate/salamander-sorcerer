extends Node3D


func _ready() -> void:
	for node in get_tree().get_nodes_in_group("badguys"):
		var badguy = node as Badguy
		badguy.set_target(%Player)
		badguy.navigation.start_navigation()
