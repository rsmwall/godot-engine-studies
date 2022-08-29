extends Node2D

# for

var x = 2
var array = ['Rafael', 'Idinei', 'Brando', 'Carlos', 'Gabriela', 'Cassia']
var dic = {
    'pos1': 'filmes de acao',
    'pos2': 'filmes de terror',
    'pos3': 'filmes de aventura'
}

# while

var j = 0
var array2 = [10, 20, 30, 40 , 50, 60 ,70 , 80, 90, 100]

func _ready():
	for i in range(10): # incrementa i ate o valor especificado no range
		print(i)

	for i in range(1, 10, 2):
	    print(i)

	# explicacao
    # 1 -> é o valor do qual i vai iniciar
    # 10 -> é o valor ate o qual i vai ser incrementado
    # 2 -> quer dizer de quanto em quanto i vai ser incrementado

    # exemplo 2 (decrementando)
	for i in range(20, 0, -1):
	    print(i)
	
	# listando elementos de um array
	for i in range(array.size()):
		print(array[i], ' posicao: ', i)
	
	# listando elementos de um dicionario
	for elements in dic:
		print(dic[elements])

	# while para exibir valores de um array
	while j < array.size():
		print('posicao: ', j, ' -> valor: ', array[j])
		j+=1