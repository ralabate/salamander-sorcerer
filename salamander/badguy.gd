extends CharacterBody3D
class_name Badguy


@onready var hit_area: Area3D = %HitArea
@onready var navigation: NavigationComponent = %NavigationComponent
@onready var visual: Visual = %SkullVisual


func _ready() -> void:
	add_to_group("badguys")

	hit_area.area_entered.connect(_on_area_entered)
	navigation.next_position.connect(_on_next_position)


func _physics_process(delta: float) -> void:
	navigation.update_target_position()
	move_and_slide()


func _on_area_entered(_area: Area3D) -> void:
	navigation.stop_navigation()
	queue_free()


func _on_next_position(next_position: Vector3) -> void:
	velocity = (next_position - position).normalized()


func set_target(node: Node3D) -> void:
	navigation.target = node
