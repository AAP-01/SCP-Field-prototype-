extends Node

var team_member = preload("res://Scenes/team_member.tscn") # Variable assigned to the scene

var member
var member_name

func _ready() -> void:
	create_team_member()
	
	#Debugging
	if TeamList.team.size() == 4:
		print("TeamList succesfully filled: " + str(TeamList.team.size()))

#HOW TO CREATE AND ENTER SCENES/NODES
func create_team_member():
	for i in range(4):							# Repeats 4 times/4 members added
		member = team_member.instantiate()		# Creates a node of the scene in *memory (it's there, but not in the scene)
		member.name_list = NameList				# Establishes a reference of name_list for team_member to use
		create_member_name()
		member.name = set_element_name()
		add_child(member)						# Node created prior enters the scene, now it's active and running its code
		TeamList.team.append(member)			# Adds node into the team array

func create_member_name():
	member.set_member_name(randi_range(0, 23), randi_range(0, 14))
	
func set_element_name() -> String:
	member_name = str(NameList.callsigns[member.callsign]) + "-" + str(NameList.numbers[member.number])
	return member_name
