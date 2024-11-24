extends CharacterBody2D
class_name Jugador

var velocidad
var enemigo
var direccion

@onready var punto_1 = $Ruta/Punto1
@onready var punto_2 = $Ruta/Punto2
@onready var punto_3 = $Ruta/Punto3
@onready var punto_4 = $Ruta/Punto4

@onready var ruta : Array = [punto_1, punto_2, punto_3, punto_4]
var punto_actual : Node2D = punto_1
var punto_proximo : Node2D = punto_2

func _ready() -> void:
	Global.jugador = self
	abc()



func Rutina():
	direccion = enemigo.global_position.direction_to(punto_actual.global_position) 

	if enemigo.global_position.distance_to(punto_actual.global_position) < 1.0:
		punto_actual = punto_proximo

		if punto_actual == punto_1:
			punto_proximo = punto_2
		elif punto_actual == punto_2:
			punto_proximo = punto_3
		elif punto_actual == punto_3:
			punto_proximo = punto_4
		elif punto_actual == punto_4:
			punto_proximo = punto_1

func ataque():
	Global.jefe.daño(2)

func muere():
	pass
