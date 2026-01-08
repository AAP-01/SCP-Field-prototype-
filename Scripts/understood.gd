extends Button

func _on_pressed() -> void:
	print("Deploying...")
	get_tree().change_scene_to_file("res://Scenes/game.tscn")
