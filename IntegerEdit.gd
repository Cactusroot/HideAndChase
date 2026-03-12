@icon("res://numbers.svg")

extends LineEdit
class_name IntegerEdit

@export var min_value: int = 0
@export var max_value: int = 10

var old_text: String = "0"
var old_caret_column: int = 0

func _ready() -> void:
	text_changed.connect(_on_text_changed)

func _on_text_changed(new_text: String) -> void:
	if new_text.is_valid_int():
		old_text = new_text
		old_caret_column = caret_column
	else:
		text = old_text
		caret_column = old_caret_column
