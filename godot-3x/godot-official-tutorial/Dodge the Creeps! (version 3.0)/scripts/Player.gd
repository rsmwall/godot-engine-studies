extends Area2D

signal hit

export (int) var speed
var screensize

func _ready():
	screensize = get_viewport_rect().size
	hide()

func _process(delta):
	var velocidade = Vector2()
	
	if Input.is_action_pressed("ui_right"):
		velocidade.x += 1
	if Input.is_action_pressed("ui_left"):
		velocidade.x += -1
	if Input.is_action_pressed("ui_down"):
		velocidade.y += 1
	if Input.is_action_pressed("ui_up"):
		velocidade.y += -1
	
	if velocidade.length() > 0:
		velocidade = velocidade.normalized() * speed
		$AnimatedSprite.play()
	else:
		$AnimatedSprite.stop()
	
	position += velocidade * delta
	position.x = clamp(position.x, 0, screensize.x)
	position.y = clamp(position.y, 0, screensize.y)
	
	if velocidade.x != 0:
		$AnimatedSprite.animation = "right"
		$AnimatedSprite.flip_v = false
		$AnimatedSprite.flip_h = velocidade.x < 0
	if velocidade.y != 0:
		$AnimatedSprite.animation = "up"
		$AnimatedSprite.flip_v = velocidade.y > 0

func _on_Player_body_entered(body):
	hide()
	emit_signal("hit")
	$CollisionShape2D.disabled = true

func start(pos):
	position = pos
	show()
	$CollisionShape2D.disabled = false
