extends Node
class_name TeamMember

@onready var name_list: Node = $"Name List"
var health := 100
var sanity := 100

func _ready() -> void:
	var name_list = get_node_or_null("Name List")
	if name_list and "callsigns" in name_list:
		var member_name = name_list.callsigns
		var callsign_roll = randi_range(0, 25)
		var number_roll = randi_range(1, 4)
		
		#Debugging purposes
		print(str(member_name[callsign_roll]) + "-" + str(number_roll))
	print("Health: " + str(health))
	print("Sanity: " + str(sanity))
	print("---")
	
func is_alive() -> bool:
	return health > 0 and sanity > 0
