extends Control

@onready var count_down = $Label;
signal countdown_finished

# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	for segundo in range(30, -1, -1):
		if segundo < 10:
			count_down.add_theme_color_override("font_color", Color.RED)
			count_down.text = "00:0" + str(segundo)
		else:
			if segundo < 20:
				count_down.add_theme_color_override("font_color", Color.YELLOW)
			else:
				count_down.add_theme_color_override("font_color", Color.GREEN)
			count_down.text = "00:" + str(segundo)
		await get_tree().create_timer(1.0).timeout
	countdown_finished.emit()
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta: float) -> void:
	pass
