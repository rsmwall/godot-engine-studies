extends Node2D

onready var spr = get_node("Sprite")
onready var anim = get_node("AnimPlayer")
# onready var anim_spr = get_node("AnimSpr")
# onready var anim_plr = get_node("AnimPlr")

# colocando os caminhos dos sprites que serao alternados em um array
var sprites = ["res://icon.png", "res://Assets/index.png"]

# exportando para a GUI da Godot um dropdown para escolha dos valores de sprite
export(int, 'original', 'preto') var valor = 0

func _ready():
	# print(anim_plr)
	# print(anim_spr)
	get_node("ExibirAnim").start()

	# mudando a textura(imagem) de um sprite
	spr.set_texture(load(sprites[valor]))

func _on_ExibirAnim_timeout():
	anim.play("Fade")
