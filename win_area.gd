extends Area2D
@onready var anim = $AnimationPlayer

func _physics_process(delta):
	anim.play("flag-wave")
