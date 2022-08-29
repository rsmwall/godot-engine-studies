extends Node2D

var valor = 100
var valor2 = 200

func _ready():
	exibir_texto()
	mostrar_valor()
	somar_valores()
	somar(10, 20)

func exibir_texto():
    print('hello world')

func mostrar_valor():
    print(valor)

func somar_valores():
    print(valor + valor2)

# funcao com parametros
func somar(x, y):
    var resultado = x + y
    print(resultado)