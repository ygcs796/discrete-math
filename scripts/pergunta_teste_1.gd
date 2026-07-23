extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_countdown_countdown_finished() -> void:
	get_tree().change_scene_to_file("res://screens/losing.tscn")
	pass # Replace with function body.

# opção correta
func _on_option_2_button_down() -> void:
	get_tree().change_scene_to_file("res://screens/victory.tscn")
	pass # Replace with function body.
	


# OPÇÕES ERRADAS
func _on_option_1_button_down() -> void:
	get_tree().change_scene_to_file("res://screens/losing.tscn")
	pass # Replace with function body.


func _on_option_3_button_down() -> void:
	get_tree().change_scene_to_file("res://screens/losing.tscn")
	pass # Replace with function body.


func _on_option_4_button_down() -> void:
	get_tree().change_scene_to_file("res://screens/losing.tscn")
	pass # Replace with function body.
