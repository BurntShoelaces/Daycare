class_name EventHandler
extends Node

func get_action(player: Entity) -> Action:
	var action: Action = null
	
	if Input.is_action_just_pressed("ui_up"):
		action = MovementAction.new(player, 0, -1)
	elif Input.is_action_just_pressed("ui_down"):
		action = MovementAction.new(player, 0, 1)
	elif Input.is_action_just_pressed("ui_left"):
		action = MovementAction.new(player, -1, 0)
	elif Input.is_action_just_pressed("ui_right"):
		action = MovementAction.new(player, 1, 0)
	
	if Input.is_action_just_pressed("ui_cancel"):
		action = EscapeAction.new(player) # Or whatever argument EscapeAction needs
	
	return action
