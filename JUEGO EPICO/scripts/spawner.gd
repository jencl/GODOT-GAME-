extends Node2D

var coleccionableEscena = preload("res://scenas/coleccion.tscn")

func _ready():
	$Timer.wait_time = randf_range(2,4)



func _on_timer_timeout():
	var coleccion = coleccionableEscena.instantiate()
	add_child(coleccion)
	
