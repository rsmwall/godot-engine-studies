extends Node2D

var x = 50
var y = 15
var a = 10

var vida = 3
var energia = 10
var arma = false

var player = "Jose"
var nivel = 2
var poderAtaque = 15
var armado = true
var defesaInimigo = 20

func _ready():

	# if | else | elif
	
	if x < y:
		print('x e menor que y')
	else:
		print('x nao e menor que y')

	# verifica se x e true (valores acima de 0 == true)
	
	if x:
		print('verdadeiro')
	else:
		print('falso')

	# elif

	if a > 10:
		print('x maior que 10')
	elif a > 5:
		print('x maior que 5')
	elif a > 2:
		print('x maior que 2')
	else:
		print('nenhum dos anteriores')

	# -------------------------------

	# operadores

	# operador &&

	if vida > 0 && energia > 0 && arma == true:
		print('atacar')
	else:
		print('e necessario que esteja com energia e armado')

	# operador ||

	if vida > 0 || energia > 0:
		print('atacar')
	else:
		print('game over')

	# operador !

	if !vida < 1:
		print('personagem vivo')
	else:
		print('personagem morto')

	if !arma == true:
		print('arma desabilitada')
	else:
		print('arma habilitada')

	# exemplo de ataque e defesa

	poderAtaque *= nivel
	if poderAtaque > defesaInimigo && armado:
		print("inimigo eliminado")
	else:
		print("inimigo nao foi eliminado")