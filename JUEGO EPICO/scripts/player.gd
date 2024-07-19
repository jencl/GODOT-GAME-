extends CharacterBody2D

var door = false
var speed := 250
signal scoreUP
signal  playerDied
@onready var animated_sprite_2d = $AnimatedSprite2D

func _process(delta):
	open_door()


func _physics_process(delta):
	var inputvel = Input.get_axis("ui_left","ui_right")
	var salto= Input.get_action_strength("ui_accept")
	
	velocity.x = inputvel * speed
	if salto != 0 and is_on_floor():
		velocity.y = 0
		velocity.y -= salto * 200
	
	if !is_on_floor():
		velocity.y += 10
	move_and_slide()
	
	if velocity.x != 0:
		animated_sprite_2d.play("run")

	else: 
		animated_sprite_2d.play("idle")
	
	if inputvel != 0:
		animated_sprite_2d.flip_h = inputvel <0

func subirscore():
	$monedaSong.play()
	emit_signal("scoreUP")
func morirse():
	$morirSonido.play()
	animated_sprite_2d.play("hurt")
	emit_signal("playerDied")
	
func open_door():
	if door == true:
		set_physics_process(false)


