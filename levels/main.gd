extends Node2D

onready var card = preload("res://card/Card.tscn")

var deck = ["circle", 
			"circle", 
			"diamond", 
			"diamond", 
			"square",
			"square",
			"triangle",
			"triangle"]
var click_counter = 0


# Called when the node enters the scene tree for the first time.
func _ready():
	# Call @GDScript.randomize() and shuffle deck
	randomize()
	deck.shuffle()
	
	# t is temporary variable to track which card should be placed on table
	var t = 0
	for i in range(0, 4):
		for j in range(0, 2):
			var c = card.instance()
			c.type = deck[t]
			c.position = Vector2(i * 74, j * 74)
			add_child(c)
			t += 1


# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass
