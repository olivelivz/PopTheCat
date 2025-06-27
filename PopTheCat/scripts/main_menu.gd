extends Node2D

func _ready():
	Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)

#start
func _on_start_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main.tscn")
func _on_start_mouse_entered() -> void:
	$buttons/click_buttom.play()
	
#options
func _on_options_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/options.tscn")
func _on_options_mouse_entered() -> void:
	$buttons/click_buttom.play()
	
#quit
func _on_quit_pressed() -> void:
	get_tree().quit()

func _on_quit_mouse_entered() -> void:
	$buttons/click_buttom.play()
	
