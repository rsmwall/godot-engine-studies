extends Node2D

var x = 20
var y = 3

var soma = x + y
var sub = x - y
var multi = x * y
var div = x / y

# ---------------------

var resto = 10 % 3

var a = 7
var b = 7
var c = 8
var d = 10

var media = (a + b + c +d) / 4

func _ready():
	print('x = ', x, ' y = ', y)
	print('A soma de x + y = ', soma)
	print('A subtracao de x - y = ', sub)
	print('A multiplicacao de x * y = ', multi)
	print('A divisao de x / y = ', div)

	print('Media dos valores = ', media)