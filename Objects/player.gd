extends Movable

func _input(event: InputEvent) -> void:
	var direction := Vector2i.ZERO
	
	if event.is_action_pressed("up"):direction = Vector2i.UP
	elif event.is_action_pressed("left"): direction = Vector2i.LEFT
	elif event.is_action_pressed("down"): direction = Vector2i.DOWN
	elif event.is_action_pressed("right"): direction = Vector2i.RIGHT
	
	if can_move(direction):
		move(direction)
