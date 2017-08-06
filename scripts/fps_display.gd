extends Node2D

var lbl_01 = Label.new()
var display = true

var r = Rect2( Vector2(200,300), Vector2(50,30) )

func _input(event):
	if event.is_action_pressed("ui_f1"):
		if display:
			display = false
		else:
			display = true

func _ready():
	add_child(lbl_01)
	
	lbl_01.set_margin(MARGIN_LEFT,10)
	lbl_01.set_size(Vector2(20,70))
	lbl_01.set_pos(Vector2(0,0))
	
	set_process_input(true)
	set_process(true)
	
func _process(delta):
	if display:
		lbl_01.set_text("FPS: " + str(OS.get_frames_per_second()))
