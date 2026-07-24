extends Control


# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	MusicManager.play(preload("res://assets/musics/to_build_events.ogg"))
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass

func _on_quit_button_down() -> void:
	get_tree().quit()
	pass # Replace with function body.


func _on_credits_button_down() -> void:
	get_tree().change_scene_to_file("res://screens/credits.tscn")
	pass # Replace with function body.


func _on_play_button_down() -> void:
	get_tree().change_scene_to_file("res://screens/text_page_1.tscn")
	pass # Replace with function body.
