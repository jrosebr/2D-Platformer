extends Node

var score = 0

func _process(_delta):
	if score >= 1500:
		get_tree().change_scene_to_file("res://UI/End_Game.tscn")

func _unhandled_input(event):
	if event.is_action_pressed("quit"):
		get_tree().quit()




func add_coin():
	score += 100
	var Score = get_node_or_null("/root/Game/UI/HUD/Score")
	if Score != null:
		Score.text = "Score: " + str(score)
