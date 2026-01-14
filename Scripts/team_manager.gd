extends Node

var team_array = TeamList.team

func _ready() -> void:
	remove_dead_member()
	set_member_health()
	set_member_sanity()
	
	#Debugging
	print(TeamList.team)
	if TeamList.team.size() != 4:
		print("BROKEN (NO OR INCORRECT ELEMENTS)")

func remove_dead_member():
	for member in team_array:
		if member.health == 0:
			print(str(member.name) + ": DEAD")
		else:
			print(str(member.name) + ": ALIVE")

func set_member_health():
	pass
	
func set_member_sanity():
	pass
