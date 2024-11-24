extends CharacterBody2D

var direccion
var velocidad = 100
var ir_hacia = Global.jugador.pos_izq
var esta_atacando = false
# Called when the node enters the scene tree for the first time.
func _ready() -> void:
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _physics_process(delta: float) -> void:
	if self.global_position.distance_to(ir_hacia) < 2 and not esta_atacando:
		Ataque()
		return

	var distancia_hacia_izquierda = self.global_position.distance_to(Global.jugador.pos_izq)
	var distancia_hacia_derecha = self.global_position.distance_to(Global.jugador.pos_der)
	
	if distancia_hacia_izquierda > distancia_hacia_derecha:
		ir_hacia = Global.jugador.pos_der
	else:
		ir_hacia = Global.jugador.pos_izq
	
	direccion = self.global_position.direction_to(ir_hacia)

	velocity = direccion * velocidad

func Ataque():
	esta_atacando = true
	
func TerminoAnimacion():
	esta_atacando = false
