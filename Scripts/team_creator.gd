extends Node

@onready var name_list: Node = $"../Name List"

var team_member = preload("res://Scenes/team_member.tscn") # Variable assigned to the scene
var team: Array[TeamMember] = []

#HOW TO CREATE AND ENTER SCENES/NODES
func _ready() -> void:
	for i in range(4):								# Repeats 4 times/4 members added
		var member = team_member.instantiate()		# Creates a node of the scene in *memory (it's there, but not in the scene)
		add_child(member)							# Node created prior enters the scene, now it's active and running its code
		team.append(member)							# Adds node into the team array
