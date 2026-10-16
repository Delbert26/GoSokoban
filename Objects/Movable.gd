class_name Movable extends Node2D

var tile := Vector2i.ZERO
var grid_size: int = 16

func _ready() -> void:
	tile = position / grid_size
	position = tile * 16.0 + Vector2(8.0, 8.0)

func can_move(direction: Vector2i)-> bool:
	return true

func move(direction: Vector2i)-> void:
	slide(direction)

func slide(direction: Vector2i)-> void:
	tile += direction
	position = tile * 16.0 + Vector2(8.0, 8.0)
	
