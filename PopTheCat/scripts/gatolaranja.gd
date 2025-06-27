extends Area2D

@export var speed: float = 145.0
@export var miau_tipo: int = 2
@onready var anim = $AnimatedSprite2D

func _ready():
	anim.play("default")

func _process(delta):
	position.y -= speed * delta
	if position.y < -50:
		queue_free()

func _on_input_event(viewport: Node, event: InputEvent, shape_idx: int) -> void:
	if event is InputEventMouseButton and event.pressed:
		pop()

func pop():
	anim.play("pop")
	var main = get_tree().root.get_node("main")
	main.play_pop_sound()
	main.play_miau(miau_tipo)
	await anim.animation_finished
	queue_free()
