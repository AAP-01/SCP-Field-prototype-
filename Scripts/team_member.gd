extends Node
class_name TeamMember

var name_list
var maximum_health := 100.00
@export var health := 100.00
@export var sanity := 100.00
var base_force := 10.00

var callsign
var number

func _ready() -> void:
	#Debugging
	print("READY FIRED (MEMBER)")
	generate_name()
	
func generate_name():
	var callsigns = name_list.callsigns
	var numbers = name_list.numbers
	print(str(callsigns[callsign]) + "-" + str(numbers[number]))
	print("Health: " + str(health))
	print("Sanity: " + str(sanity))
	print("Base force: " + str(base_force))
	print("Current force: " + str(set_force()))
	print("---")

func set_member_name(callsign_roll, number_roll):
	callsign = callsign_roll
	number = number_roll

func is_alive() -> bool:
	return health > 0 and sanity > 0

func set_force():
	var force = base_force * ((health + sanity)/(2 * maximum_health))
	if health <= 0:
		force = 0
	return force
