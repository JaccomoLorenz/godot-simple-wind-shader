extends Node

var container = VBoxContainer.new()
var fps_lbl = Label.new()
var time_lbl = Label.new()
var object_lbl = Label.new()
var vertics_lbl = Label.new()
var v_memory_lbl = Label.new()
var draws_lbl = Label.new()
var res_lbl = Label.new()

func _input(event):
	if event.is_action_pressed("ui_f1"):
		if is_processing():
			set_process(false)
			container.hide()
		else:
			set_process(true)
			container.show()

func _ready():
	add_child(container)

	container.add_child(fps_lbl)
	container.add_child(time_lbl)
	container.add_child(object_lbl)
	container.add_child(vertics_lbl)
	container.add_child(v_memory_lbl)
	container.add_child(draws_lbl)
	container.add_child(res_lbl)

	set_process_input(true)
	set_process(true)

func _process(delta):
		fps_lbl.set_text("FPS: %s" % Performance.get_monitor(Performance.TIME_FPS))
		time_lbl.set_text("Process Time: %s" % Performance.get_monitor(Performance.TIME_PROCESS))
		object_lbl.set_text("Objects: %s" % Performance.get_monitor(Performance.RENDER_OBJECTS_IN_FRAME))
		vertics_lbl.set_text("Vertics: %s" % Performance.get_monitor(Performance.RENDER_VERTICES_IN_FRAME))
		v_memory_lbl.set_text("Video Memory: %s" % Performance.get_monitor(Performance.RENDER_VIDEO_MEM_USED))
		draws_lbl.set_text("Draw Calls: %s" % Performance.get_monitor(Performance.RENDER_DRAW_CALLS_IN_FRAME))
		draws_lbl.set_text("Resolution: %s" % get_viewport().size)