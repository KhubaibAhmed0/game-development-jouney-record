extends Area2D

@export var score = 0
@onready var label = $"../Camera2D/LabelCoin"
@onready var anim = $AnimationPlayer
@onready var collision = $CollisionShape2D
@onready var box = $"."

func _physics_process(delta):
	
	#playing coin rotation animation
	anim.play("coin-rotation")
	
	for area in box.get_overlapping_areas():
		if area.name == "hurtBox":
			queue_free()
			collision.disabled = true
			score += 1
		
		
		
	
	
