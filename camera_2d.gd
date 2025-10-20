extends Camera2D

@onready var target_node = $'../Player'

func _process(delta: float) -> void:
	if target_node.gameOver == false:
		var newPos = target_node.transform.origin + Vector2(0,-120)
		set_position(newPos)
