extends Button

func _on_pressed() -> void:
	print("Returning to Menu...")
	get_tree().change_scene_to_file("res://Scenes/starting_menu.tscn")
