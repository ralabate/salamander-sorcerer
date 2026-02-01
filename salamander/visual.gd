class_name Visual extends Node3D


@onready var is_moving: bool
@onready var animation_player: AnimationPlayer = %AnimationPlayer
@onready var animation_tree: AnimationTree = %AnimationTree


func set_animation_state(state: String) -> void:
	var playback = animation_tree.get("parameters/playback")
	playback.travel(state)


func get_animation_state() -> String:
	var playback = animation_tree.get("parameters/playback")
	return playback.get_current_node()
