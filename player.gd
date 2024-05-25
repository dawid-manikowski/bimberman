extends CharacterBody2D


const SPEED = 300.0

func _ready():
	pass

func _physics_process(delta):
	var velocity = Vector2.ZERO
	if Input.is_action_pressed("walk_right"):
		$AnimatedSprite2D.animation = "walk_right"
		velocity.x += 1 * SPEED
	elif Input.is_action_pressed("walk_left"):
		$AnimatedSprite2D.animation = "walk_left"
		velocity.x -= 1 * SPEED
	elif Input.is_action_pressed("walk_up"):
		$AnimatedSprite2D.animation = "walk_up"
		velocity.y -= 1 * SPEED
	elif Input.is_action_pressed("walk_down"):
		$AnimatedSprite2D.animation = "walk_down"
		velocity.y += 1 * SPEED
	$AnimatedSprite2D.play()
	move_and_collide(velocity*delta)
