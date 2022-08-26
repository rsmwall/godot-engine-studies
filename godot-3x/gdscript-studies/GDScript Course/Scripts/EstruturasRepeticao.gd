extends Node2D

# for

var x = 2

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