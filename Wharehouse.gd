extends TileMap




# Called when the node enters the scene tree for the first time.
func _ready():
	tile_set = preload("res://Resources/wall_tile_set_big.tres")
	
	var _tileSize : Vector2i = tile_set.tile_size
	
	
	
	var wall_cells = []
	var xPositions = []
	xPositions.push_back([4, 5, 6, 7, 8])
	xPositions.push_back([4, 8])
	xPositions.push_back([4,8])
	xPositions.push_back([2,3,4,8,9])
	xPositions.push_back([2,9])
	xPositions.push_back([0,1,2,4,6,7,9,13,14,15,16,17,18])
	xPositions.push_back([0,4,6,7, 9,10,11,12,13,18])
	xPositions.push_back([0,18])
	xPositions.push_back([0,1,2,3,4,6,7,8,10,12,13,18])
	xPositions.push_back([4,10,11,12,13,14,15,16,17,18])
	xPositions.push_back([4,5,6,7,8,9,10])
			
	for y in range(0, 11):
		for x in xPositions[y]:
			var cell_pos = Vector2i(x+3, y+3)
			wall_cells.push_back(cell_pos)
#			set_cell(0, cell_pos, 0, Vector2i(1,3))
	set_cells_terrain_connect(0, wall_cells, 0, 0)
	

# Called every frame. 'delta' is the elapsed time since the previous frame.
func _process(_delta):
	pass
