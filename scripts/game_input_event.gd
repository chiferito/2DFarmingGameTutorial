class_name GameInputevents

extends Node

static var direction: Vector2

static func movement_input() -> Vector2:
	if Input.is_action_pressed("walk_down"):
		direction = Vector2.DOWN
	elif Input.is_action_pressed("walk_up"):
		direction = Vector2.UP
	elif Input.is_action_pressed("walk_left"):
		direction = Vector2.LEFT
	elif Input.is_action_pressed("walk_right"):
		direction = Vector2.RIGHT
	else: direction = Vector2.ZERO
	return direction

static func is_movement_input() -> bool:
	return false if movement_input()==Vector2.ZERO else true;

static func use_tool() -> bool:
	return Input.is_action_just_pressed("hit")
