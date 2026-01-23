extends VBoxContainer

@onready var mtf_name: Label = $"MTF name"
@onready var member1: Label = $"Member 1/Member"
@onready var member2: Label = $"Member 2/Member"
@onready var member3: Label = $"Member 3/Member"
@onready var member4: Label = $"Member 4/Member"

func _ready() -> void:
	set_team_list_board()
	
func set_team_list_board():
	mtf_name.text = "MOBILE TASK FORCE " + MTF.mtf_name.to_upper()
	member1.text = str(TeamList.team[0].name.to_upper())
	member2.text = str(TeamList.team[1].name.to_upper())
	member3.text = str(TeamList.team[2].name.to_upper())
	member4.text = str(TeamList.team[3].name.to_upper())
