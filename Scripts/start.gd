extends Button

func _on_pressed() -> void:
	print("Starting game...")
	get_tree().change_scene_to_file("res://Scenes/debriefing_screen.tscn")
