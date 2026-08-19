extends State

class_name IdleState

func enter():
	print("changing to idle state.")

func handle_input(event: InputEvent):
	if Input.is_action_pressed("ui_left") or Input.is_action_pressed("ui_right"):
		state_machine.change_state("walkstate")
	if Input.is_action_just_pressed("ui_up"):
		state_machine.change_state("jumpstate")
	pass
