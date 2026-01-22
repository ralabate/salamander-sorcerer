extends CharacterBody3D


const IDLE_STATE = "mando_idle"
const SWIPE_STATE = "mando_swipe"

const SPEED = 5.0
const JUMP_VELOCITY = 4.5

var _animation_tree: AnimationTree
var _state_machine: AnimationNodeStateMachinePlayback

@onready var visual: Node3D = %SalamanderVisual


func _ready() -> void:
	_animation_tree = visual.get_node("AnimationTree") as AnimationTree
	_state_machine = _animation_tree.get("parameters/playback")


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction and _state_machine.get_current_node() != SWIPE_STATE:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
	else:
		velocity.x = 0
		velocity.z = 0

	if direction != Vector3.ZERO:
		visual.look_at(visual.global_position + direction, Vector3.UP, true)

	if Input.is_action_just_pressed("ui_accept"):
		_state_machine.travel(SWIPE_STATE)

	move_and_slide()
