extends Node

var stage_1_events = [
	preload("res://Events/event_locked_entrance.tres"),
	preload("res://Events/event_armed_guards.tres")
]

var stage_2_events = [
	preload("res://Events/event_crossroads.tres"),
	preload("res://Events/event_found_electrical_room.tres")
]

var stage_3_events = [
	preload("res://Events/event_start_exfil.tres")
]

# Dictionary
var events = [
	{"name": "Stage 1", "events": stage_1_events},		# 0 position
	{"name": "Stage 2", "events": stage_2_events},		# 1 position
	{"name": "Stage 3", "events": stage_3_events}		# 2 position
]

var combat_events = [
	preload("res://Events/combat_event_mutant_attack.tres"),
	preload("res://Events/combat_event_gate_firefight.tres")
]
