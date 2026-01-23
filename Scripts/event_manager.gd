extends Node

signal event_happened

var event_counter := 0					# Counts the number of events passed
var event_advance := 0					# Amount of events of a staged left until moving to the next event stage
var event_stage_changer := 0			# The index of the events dictionary
var event_stage = EventList.events		# THe event stage chosen
var event								# The event chosen

func _ready() -> void:
	change_event_stage()
	#Debugging
	print("Current event stage: " + str(event_stage.name))
	print("Stage events: " + str(event_stage.events))
	print("Event stage size: ", event_stage.events.size())

func run_event():
	if event_counter == 5:
		event_counter = 0 # Reset counter
		event_selector()
		event_happened.emit()
		event_counter += 1

func change_event_stage():
	event_stage_changer = clamp(event_stage_changer, 0, 2)
	if event_advance == 10:
		event_stage_changer += 1
	event_stage = EventList.events[event_stage_changer]		# event_stage refers to the index in the events dictionary
		

func event_selector():
	var arr = event_stage.events
	event = event_stage.events[randi_range(0, arr.size()-1)]
