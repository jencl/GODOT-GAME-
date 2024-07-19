extends Node2D

@onready var player = $player
var scoreJugador := 0

func _ready():
	player.connect("scoreUP",subirscore)
	$juegoSonido.play()
func subirscore():
	scoreJugador +=1
	$score.text = str(scoreJugador)
	player.connect("playerDied",morir)
func morir():
	$DeathScreen/HBoxContainer/FinalScore.text = str (scoreJugador)
	$DeathScreen.show()
	get_tree().paused = true
	
func _process(delta):
	pass
