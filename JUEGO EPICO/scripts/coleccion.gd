extends Area2D

var esEstrella = false
var spriteEnemigo = preload("res://assets/malo.png")

func _ready():
	if randf() > .5:
		esEstrella = true


	if !esEstrella:
		$sprite.texture = spriteEnemigo


func _on_body_entered(body):
	if body.is_in_group("player"):
		if esEstrella:
			body.subirscore()
		else:
			body.morirse()
		queue_free()

func _process(delta):
	position.y += 1
