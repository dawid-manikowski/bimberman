extends Area2D

# Called when the node enters the scene tree for the first time.
func _ready():
	pass


# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(delta):
	pass


func _on_body_entered(body):
	print(body)
	print(owner)
	print($Root)
	print(is_inside_tree())
	print(get_tree_string_pretty())
	var tilemap = get_node("map/Stones")
	
	var cell_coordinates = Vector2i(position)
	tilemap.erase_cell(0, cell_coordinates)


func _on_timer_timeout():
	queue_free()
