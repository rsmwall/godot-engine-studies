extends Node2D

# colecoes

# arrays

# 0 -> 100
# 1 -> 200
# ...

var array = [100, 200, 300, 400, 500, 600, 700]
var tipos = ['fps', 'rpg']
var numeros = [100, 200, 300, 400]

func _ready():
	
    # adicionar novo elemento ao array
	tipos.append('acao')
	tipos.append('luta')
	tipos.append('plataforma')

	# remover elemento do array
	print('O estilo de jogo ', tipos[2], ' foi removido')
	tipos.remove(2)     # remove usando o indice
	tipos.erase('luta') # remove usando o valor do elemento

	print('Meu estilo de jogo favorito é ', tipos[2])

	# exemplo

	print('Taamnho do array -> ', numeros.size())
	print('Antes -> ', numeros)
	numeros.append(500)
	numeros.append(600)
	numeros.append(700)
	numeros.erase(300)
	print('Depois -> ', numeros)
	print('Taamnho do array -> ', numeros.size())