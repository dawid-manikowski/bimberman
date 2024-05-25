extends Node2D

var ticks = 0
const MAX_TICKS = 6
var scaled = false
var explosions = []
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
		var node = get_node("/root")
		print(node)
		for x in range(-1,2,1):
			for y in range(-1,2,1):
				var exp_inst = explosion.instantiate()
				explosions.append(exp_inst)
				exp_inst.position.y = position.y + 48 * y
				exp_inst.position.x = position.x + 48 * x
				node.add_child(exp_inst)
				print(get_tree_string_pretty())
				
		queue_free()
