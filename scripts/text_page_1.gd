extends Control

@onready var dialog_text = $VBoxContainer/Label

signal dialog_finished
var pages: Array = []
var current_page: int = 0

func _ready():
	visible = false
	show_dialog([
		"Let's reflect: if you divide 25 by 4 and you want to only work with intergers , you will have 2 results:",
		"the quotient that is equal to 6...",
		"and the rest that is 1" ,
		"If you need the rest of a dividing operation, you can just say that you want the result of '25 mod 4'",
		"That operation doesn't exist in your calculator",
		"When we resolve problems with that operation, we are using the 'Module Arithmetic'" ,
		"How can you use that?",
		"Well, you can use it in criptograph...",
		"getting a randomic number...",
		"or just converting the hour to a 12-hour format."
	])

func show_dialog(texts: Array):
	pages = texts
	current_page = 0
	visible = true
	_show_page(pages[current_page])

func _show_page(line: String):
	dialog_text.text = line

func next_page():
#func _unhandled_input(event):
	#if not visible:
		#return
	#if Input.is_key_pressed(KEY_E): # ação criada por mim
	current_page += 1
	if current_page < pages.size():
		_show_page(pages[current_page])
	else:
		#visible = false
		#emit_signal("dialog_finished")
		get_tree().change_scene_to_file("res://screens/pergunta_teste_1.tscn")


func _on_next_button_button_down() -> void:
	next_page()
	pass # Replace with function body.
