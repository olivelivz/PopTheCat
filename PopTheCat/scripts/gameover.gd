extends Control



func _on_Restart_pressed() -> void:
	get_tree().change_scene_to_file("res://scripts/main.gd")
