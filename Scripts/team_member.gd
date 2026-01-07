extends Node

@onready var name_list: Node = $"Name List"

var health = 100
var sanity = 100

func _ready() -> void:
	var member_name = name_list.callsigns
	var name_roll = randi_range(0, 25)
	var number_roll = randi_range(1, 4)
	print(str(member_name[name_roll]) + "-" + str(number_roll))
	
	print("Health: " + str(health))
	print("Sanity: " + str(sanity))
