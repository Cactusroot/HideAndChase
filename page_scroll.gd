extends ScrollContainer

@export var snap_duration := 0.3
var dragging := false
var last_mouse_pos := Vector2.ZERO

func _ready():
	
	# 2. Connect the scrollbar's input to our snap logic
	get_h_scroll_bar().gui_input.connect(_on_scrollbar_input)

func snap_horizontal():
	# Explicitly define item_width as a float since size.x is a float
	var item_width: float = size.x
	if item_width <= 0: return 
	
	# We cast the result to an 'int' to get the clean page number
	# This solves the inference error
	var page: int = int((scroll_horizontal + item_width / 2.0) / item_width)
	
	# target_scroll can be a float or int, but let's stick to float for the tween
	var target_scroll: float = page * item_width
	
	var tween = create_tween()
	tween.tween_property(self, "scroll_horizontal", target_scroll, snap_duration)\
		.set_trans(Tween.TRANS_QUAD)\
		.set_ease(Tween.EASE_OUT)
		
func _on_scrollbar_input(event):
	if event is InputEventMouseButton and not event.pressed:
		snap_horizontal()

func _gui_input(event):
	if event is InputEventMouseButton and not event.pressed:
		snap_horizontal()
	
	if event is InputEventMouseButton:
		if event.button_index == MOUSE_BUTTON_LEFT:
			dragging = event.pressed
			last_mouse_pos = event.position

	elif event is InputEventMouseMotion and dragging:
		var delta = event.position - last_mouse_pos
		
		scroll_horizontal -= delta.x
		scroll_vertical -= delta.y
		
		last_mouse_pos = event.position
