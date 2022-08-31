extends Node2D

# colecoes

# arrays

# 0 -> 100
# 1 -> 200
# ...

var array = [100, 200, 300, 400, 500, 600, 700]
var tipos = ['fps', 'rpg']
var numeros = [100, 200, 300, 400]
var players = {}

# dicionario

var jogadores = {
    "p1": "Rafael",
    "p2": "Ana",
    "p3": "Kyle",
    "p4": "Felipe"
}
var dic = {
    "a": "Game",
    "b": "Player"
}

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

	# imprimir dicionarios

	print('Primeiro jogador: ', jogadores.p1)
	print(dic.b)

	# adicionando valores ao dicionario
	players.p1 = "Felipe"
	players.p2 = "Antonio"
	players.p3 = "Kleber"

	# remover um objeto
	players.erase("p3")

	print(players)