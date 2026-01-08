extends Button

func _on_pressed() -> void:
	print("Quitting game...")
	get_tree().quit()
