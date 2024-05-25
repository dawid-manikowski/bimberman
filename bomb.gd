extends Node2D

var ticks = 0
const MAX_TICKS = 6
var scaled = false
@export var explosion: PackedScene

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_ticker_timeout():
	ticks += 1
	if not scaled:
		scale.x = 0.7
		scale.y = 0.7
		scaled = true
	else:
		scale.x = 1
		scale.y = 1
		scaled = false
	if ticks >= MAX_TICKS:
		var a = explosion.instantiate()
		a.position = position
		var node = get_node("/root")
		node.add_child(a)
		queue_free()
