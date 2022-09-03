extends KinematicBody2D

var velocidade = 12000

func _ready():
	set_process(true)
	set_process_input(true)
	get_parent().get_node("Inicio").connect("body_entered", self, "mudar_posicao")

func _input(event):
	if Input.is_action_pressed("ataque"):
		get_node("Espada").show()
		get_node("Espada/AreaEsp").set_monitorable(true)
	else:
		get_node("Espada").hide()
		get_node("Espada/AreaEsp").set_monitorable(false)

func _process(delta):
	var direcao = Vector2(0, 0)
	var esquerda = false
	var direita = false
	var cima = false
	var baixo = false
	
	if get_tree().get_nodes_in_group("Areas").size() > 0:
		self.set_z_index(-1)
	else:
		self.set_z_index(10)
	
	if Input.is_action_pressed("ui_left"):
		esquerda = true
		direcao.x = -1
	if Input.is_action_pressed("ui_left") && Input.is_action_pressed("ui_up"):
		esquerda = false
		cima = true
	if Input.is_action_pressed("ui_left") && Input.is_action_pressed("ui_down"):
		esquerda = false
		baixo = true
	if Input.is_action_pressed("ui_right"):
		direita = true
		direcao.x = 1
	if Input.is_action_pressed("ui_right") && Input.is_action_pressed("ui_up"):
		direita = false
		cima = true
	if Input.is_action_pressed("ui_right") && Input.is_action_pressed("ui_down"):
		direita = false
		baixo = true
	if Input.is_action_pressed("ui_up"):
		cima = true
		direcao.y = -1
	if Input.is_action_pressed("ui_down"):
		baixo = true
		direcao.y = 1
	
	# movimentacao do player
	move_and_slide(velocidade * direcao * delta)
	
	if esquerda:
		get_node("Sprite").play("esquerda")
		espada(315)
	if direita:
		get_node("Sprite").play("direita")
		espada(135)
	if cima:
		get_node("Sprite").play("cima")
		espada(45)
	if baixo:
		get_node("Sprite").play("baixo")
		espada(225)
	if !(esquerda || direita || cima || baixo):
		get_node("Sprite").play("parado")

func mudar_posicao(body):
	get_parent().get_node("Fade/Animation").play("Fade")

func mudar():
	self.set_position(get_parent().get_node("Fim").get_position())


# funcao para direcao da espada
func espada(rot):
	get_node("Espada").set_rotation_degrees(rot)
