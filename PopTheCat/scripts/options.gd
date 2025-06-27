extends Node2D

func _on_quit_for_menu_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")


func _on_quit_for_menu_mouse_entered() -> void:
	$Clicksound.play()


func _on_credits_pressed() -> void:
	get_tree().change_scene_to_file("res://scenes/credits.tscn")
