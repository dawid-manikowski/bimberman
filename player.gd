extends CharacterBody2D

signal place_bomb
const SPEED = 150.0


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
	#move_and_collide(velocity*delta)
	var tilemap = get_node("../map/Stones")
	var collision = move_and_collide(velocity * delta)
	if collision:
		var cell = tilemap.local_to_map(collision.get_position() - collision.get_normal())
		tilemap.erase_cell(0, cell)
	if Input.is_action_just_pressed("place_bomb"):
		print("Player: Bomb placed!")
		place_bomb.emit()
	print($Node)
