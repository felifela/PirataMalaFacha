extends Control

var toggle = false

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://BarraVida.tscn")

func _on_button_2_pressed() -> void:
	toggle = !toggle

	if toggle:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_FULLSCREEN)
	if !toggle:
		DisplayServer.window_set_mode(DisplayServer.WINDOW_MODE_WINDOWED)
