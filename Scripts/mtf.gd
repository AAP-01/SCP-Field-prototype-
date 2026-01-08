extends Label

@onready var name_list: Node = $"Name List"

func _ready() -> void:
	var team_name = name_list.mtf_names
	var name_roll = randi_range(0, 23)
	var number_roll = randi_range(1, 20)
	print(str(team_name[name_roll]) + "-" + str(number_roll))
	text = "YOU WILL ASSUME COMMAND OF MOBILE TASK FORCE " + str(team_name[name_roll].to_upper()) + "-" + str(number_roll)
