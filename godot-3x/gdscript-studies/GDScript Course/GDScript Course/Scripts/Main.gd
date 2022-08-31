extends Node2D

var tempo = 0
var exibir = true
var exibirTexto = true
var x = 10
var y = 20

func _ready():
	set_process(true)
	set_process_input(true)

# delta -> indica que esta funcao sera executada 60 FPS
func _process(delta):
	tempo += delta
	if tempo > 5 && exibir:
		exibir_texto()
		exibir = false
	
	if tempo > 10 && exibirTexto:
		mostrar_texto()
		exibirTexto = false

func exibir_texto():
	print(tempo)

func mostrar_texto():
	print('estamos na parte 2')

func _on_TempoTexto_timeout():
	print('se passaram dois segundos')

func _on_ExibirNome_timeout():
	print('Rafael Silva')

func _on_ExibirVariaveis_timeout():
	print(x)
	print(y)

func _input(event):
	if Input.is_action_pressed("ui_accept"):
		get_node("Timer").start()

func mostrar_texto2():
	print('timer executado')

func _on_Timer_timeout():
	mostrar_texto2()
