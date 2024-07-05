extends CanvasLayer



func _on_salir_pressed():
	get_tree().quit()


func _on_reinicio_pressed():
	get_tree().reload_current_scene()
