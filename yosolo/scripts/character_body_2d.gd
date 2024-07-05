extends CharacterBody2D

@export var move_speed: float
var que_lado_mira = true
@onready var animated_sprite = $AnimatedSprite2D

func _physics_process(delta):
	move_x()
	flip()
	animaciones_pe()
	move_and_slide()
	
func animaciones_pe():
	if velocity.x:
		animated_sprite.play("no quieto")
	else:
		animated_sprite.play("quieto")
	
func flip():
	if (que_lado_mira and velocity.x < 0) or (not que_lado_mira and velocity.x > 0):
		scale.x *= -1
		que_lado_mira = not que_lado_mira
	
		
		
func move_x():
	var input_axis = Input.get_axis("left","right")
	velocity.x = input_axis * move_speed
	
	

