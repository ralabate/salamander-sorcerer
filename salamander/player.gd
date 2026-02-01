extends CharacterBody3D


const IDLE_STATE = "mando_idle"
const SWIPE_STATE = "mando_swipe"
const SLEEP_STATE = "mando_sleep"

const SPEED = 5

@onready var visual: Visual = %SalamanderVisual
@onready var idle_timer: Timer = %IdleTimer


func _ready() -> void:
	visual.set_animation_state(IDLE_STATE)
	idle_timer.timeout.connect(_on_idle_timer_timeout)
	idle_timer.start()


func _physics_process(delta: float) -> void:
	if not is_on_floor():
		velocity += get_gravity() * delta

	var input_dir := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	var direction := (transform.basis * Vector3(input_dir.x, 0, input_dir.y)).normalized()
	if direction and visual.get_animation_state() != SWIPE_STATE:
		velocity.x = direction.x * SPEED
		velocity.z = direction.z * SPEED
		visual.is_moving = true
		if not idle_timer.is_stopped():
			idle_timer.stop()
	else:
		velocity.x = 0
		velocity.z = 0
		visual.is_moving = false
		if idle_timer.is_stopped():
			idle_timer.start()

	visual.is_moving = direction != Vector3.ZERO
	if direction != Vector3.ZERO:
		visual.look_at(visual.global_position + direction, Vector3.UP, true)

	if Input.is_action_just_pressed("ui_accept"):
		visual.set_animation_state(SWIPE_STATE)

	move_and_slide()


func _on_idle_timer_timeout() -> void:
	visual.set_animation_state(SLEEP_STATE)
