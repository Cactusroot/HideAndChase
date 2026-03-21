@icon("res://margin_v_box_container.svg")

extends MarginContainer
class_name MarginVBoxContainer

## Single property to control all margins simultaneously.
@export var all_margins: int = 40

var _vbox: VBoxContainer

func _ready() -> void:
	# 1. Create the internal VBoxContainer at runtime
	_vbox = VBoxContainer.new()
	_vbox.name = "InternalVBox"
	
	# 2. Move all children that were added in the editor into the VBox
	var children = get_children()
	for child in children:
		remove_child(child)
		_vbox.add_child(child)
	
	# 3. Add the VBox to this MarginContainer
	add_child(_vbox)
	
	# 4. Apply the margin constants
	_update_margins()

func _update_margins() -> void:
	add_theme_constant_override("margin_top", all_margins)
	add_theme_constant_override("margin_bottom", all_margins)
	add_theme_constant_override("margin_left", all_margins)
	add_theme_constant_override("margin_right", all_margins)
