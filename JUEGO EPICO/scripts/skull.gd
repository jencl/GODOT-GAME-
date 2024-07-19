extends Area2D

@onready var anim = $AnimatedSprite2D
@onready var tiempo = $Timer
@onready var collision = $CollisionShape2D

func _ready():
	anim.play("skull")
	pass
	
	

func _on_body_entered(body):
	if body.is_in_group("player"):
		body.door = true
		collision.queue_free()
		anim.play("skull")
		tiempo.start()
		await (tiempo.timeout)
		get_tree().change_scene_to_file("res://scenas/nivel_2.tscn")
	pass # Replace with function body.
