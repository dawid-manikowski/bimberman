extends Area2D


const SPEED = 300.0

func _ready():
	pass

func _process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("walk_right"):
		print("right")
		$AnimatedSprite2D.animation = "walk_right"
		velocity.x += 1
	if Input.is_action_pressed("walk_left"):
		print("left")
		$AnimatedSprite2D.animation = "walk_left"
		velocity.x -= 1
	if Input.is_action_pressed("walk_up"):
		$AnimatedSprite2D.animation = "walk_up"
		velocity.y -= 1
	if Input.is_action_pressed("walk_down"):
		$AnimatedSprite2D.animation = "walk_down"
		velocity.y += 1
	$AnimatedSprite2D.play()
	position += velocity * delta
	#if velocity.length() > 0:
		#velocity = velocity.normalized() * SPEED
		#$AnimatedSprite2D.play()
	#else:
		#$AnimatedSprite2D.stop()
#
	#if velocity.x != 0:
		#$AnimatedSprite2D.animation = "walk"
		#if velocity.y <= 0:
			#$AnimatedSprite2D.flip_v = false
		#else:
			#$AnimatedSprite2D.flip_v = true
		#$AnimatedSprite2D.flip_h = velocity.x < 0
	#elif velocity.y != 0:
		#$AnimatedSprite2D.animation = "up"
		#$AnimatedSprite2D.flip_v = velocity.y > 0




