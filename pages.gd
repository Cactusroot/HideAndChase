extends HBoxContainer

func _ready() -> void:
	# 1. Connect to the parent's resized signal so we react when the UI scales
	var parent = get_parent()
	if parent is ScrollContainer:
		parent.resized.connect(_rescale_children)
		
	add_theme_constant_override("separation", 0)
	
	# 2. Initial call to set sizes on startup
	_rescale_children()

func _rescale_children() -> void:
	var parent = get_parent()
	if not parent is ScrollContainer:
		return

	# We use the parent's size (the visible viewport area)
	var target_width = parent.size.x
	
	for child in get_children():
		if child is Control:
			# Forcing the custom_minimum_size is the only way to 
			# override the HBoxContainer's internal layout logic
			child.custom_minimum_size.x = target_width

func _on_child_entered_tree(_node: Node) -> void:
	# Optional: ensure new items added at runtime also get sized
	_rescale_children()
