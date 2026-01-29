extends CharacterBody3D


@onready var hit_area: Area3D = %HitArea


func _ready() -> void:
	hit_area.area_entered.connect(_on_area_entered)


func _on_area_entered(area: Area3D) -> void:
	queue_free()
