extends Control
func _on_animation_player_animation_finished(_intro: StringName) -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
