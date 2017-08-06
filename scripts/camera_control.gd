extends Camera

var direction = Vector3(0.0, 0.0, 0.0)
var speed = 5.0

var mouse_position = Vector2(0.0, 0.0)
var sensitivity = 1.0

var resolution = Vector2(0, 0)
var center = Vector2(0, 0)

func _ready():
	set_process(true)
	set_process_input(true)

func _input(event):
	if event.is_action_pressed("ui_up"):
		direction.z = -1
	elif event.is_action_pressed("ui_down"):
		direction.z = 1
	elif not Input.is_action_pressed("ui_up") and not Input.is_action_pressed("ui_down"):
		direction.z = 0
		
	if event.is_action_pressed("ui_left"):
		direction.x = -1
	elif event.is_action_pressed("ui_right"):
		direction.x = 1
	elif not Input.is_action_pressed("ui_left") and not Input.is_action_pressed("ui_right"):
		direction.x = 0

	if event.type == InputEvent.MOUSE_MOTION:
		resolution = get_viewport().get_rect()
		center = resolution.size/2
	
		Input.warp_mouse_pos(center)
		Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
		
		Input.warp_mouse_pos(center)
		mouse_position = ((center / resolution.size) - (event.pos / resolution.size)) * sensitivity

		global_rotate(Vector3(0, 1, 0), -mouse_position.x)
		rotate_x(-mouse_position.y)
		Input.warp_mouse_pos(center)
	
func _process(delta):
	translate(direction * speed * delta)