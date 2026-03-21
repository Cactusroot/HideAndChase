@icon("res://integer_edit.svg")

extends LineEdit
class_name IntegerEdit

@export var min_value: int = 0
@export var max_value: int = 10

var old_text: String = "0"
var old_caret_column: int = 0

func _ready() -> void:
	placeholder_text = str(min_value)
	text = str(min_value)
	text_changed.connect(_on_text_changed)

func _on_text_changed(new_text: String) -> void:
	if new_text.is_empty():
		pass
	elif new_text.is_valid_int():
		var new_value = new_text.to_int()
		var clamped = clampi(new_value, min_value, max_value)
		if new_value != clamped:
			text = str(clamped)
			caret_column = len(text)
		old_text = text
		old_caret_column = caret_column
	else:
		text = old_text
		caret_column = old_caret_column
