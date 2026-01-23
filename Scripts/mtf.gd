extends Label
class_name MTF

#@onready var name_list: Node = $"../../Name List"
var name_list = NameList
static var mtf_name: String

func _ready() -> void:
	var team_name = name_list.mtf_names
	var name_roll = randi_range(0, 23)
	var number_roll = randi_range(1, 20)
	mtf_name = str(team_name[name_roll]) + "-" + str(number_roll)
	print(str(team_name[name_roll]) + "-" + str(number_roll))
	print("READY FIRED (TEAM)")
	print("===")
	text = "YOU WILL ASSUME COMMAND OF MOBILE TASK FORCE " + str(team_name[name_roll].to_upper()) + "-" + str(number_roll)
