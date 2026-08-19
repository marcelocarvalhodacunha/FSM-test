extends State

class_name JumpState

func enter():
	var character = state_machine.get_parent()
	character.velocity.y = -400

func physics_update(delta):
	var character = state_machine.get_parent()
	
	character.velocity.y += 900 * delta
	
	var direction = Input.get_axis("ui_left", "ui_right")
	character.velocity.x = direction * 200
	
	character.move_and_slide()
	
	if character.is_on_floor():
		if direction != 0:
			state_machine.change_state("walkstate")
		else:
			state_machine.change_state("idlestate")
