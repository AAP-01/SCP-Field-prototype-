extends Control

func _enter_tree() -> void:
	DisplayServer.window_set_min_size(Vector2i(1152, 648))

func _ready():
	TeamList.team.clear()
	
	# Debugging
	print(TeamList.team)
	if TeamList.team.size() != 0:
		print("ERROR: ELEMENTS IN TEAMLIST REMAIN AFTER EXITING")
