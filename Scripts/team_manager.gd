extends Node

var team_array = TeamList.team

func _ready() -> void:
	member_status()
	
	#Debugging
	print(TeamList.team)
	print("Team size: " + str(TeamList.team.size()))
	if TeamList.team.size() != 4:
		print("ERROR: NO OR INCORRECT ELEMENT SIZE")

func member_status():
	# Checks member's status
	pass

func _on_event_manager_event_happened() -> void:
	pass # Replace with function body.
