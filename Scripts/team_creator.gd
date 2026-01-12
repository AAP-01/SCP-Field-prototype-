extends Node

var team_member = preload("res://Scenes/team_member.tscn") # Variable assigned to the scene
var team: Array[TeamMember] = []
var member

#HOW TO CREATE AND ENTER SCENES/NODES
func _ready() -> void:
	create_team_member()

func create_team_member():
	for i in range(4):							# Repeats 4 times/4 members added
		member = team_member.instantiate()		# Creates a node of the scene in *memory (it's there, but not in the scene)
		member.name_list = $"../Name List"		# Establishes a reference of name_list for team_member to use
		create_member_name()
		add_child(member)						# Node created prior enters the scene, now it's active and running its code
		team.append(member)						# Adds node into the team array

func create_member_name():
	member.set_callsign(randi_range(0, 23))
	member.set_member_number(randi_range(0, 14))
