extends Node2D

@onready var timer = $balloon_timer
@onready var pop_sound = $pop_sound
@onready var miau_0 = $miau_0
@onready var miau_1 = $miau_1
@onready var miau_2 = $miau_2

# Lista de gatos (balões com forma de gato)
var gatos: Array[PackedScene] = [
	preload("res://scenes/gatobranco.tscn"),
	preload("res://scenes/gatocinza.tscn"),
	preload("res://scenes/gatolaranja.tscn")
]

func _ready():
	randomize()
	timer.timeout.connect(spawn_balloon)

func spawn_balloon():
	var indice = randi() % gatos.size()
	var gato = gatos[indice].instantiate()
	add_child(gato)

	var screen_size = get_viewport_rect().size
	gato.position = Vector2(randf() * screen_size.x, screen_size.y + 50)

func play_pop_sound():
	pop_sound.play()

func play_miau(tipo: int):
	match tipo:
		0:
			miau_0.play()
		1:
			miau_1.play()
		2:
			miau_2.play()
