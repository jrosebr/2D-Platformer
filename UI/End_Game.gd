extends Control

func _ready():
	$Label.text = "You collected all the Coins!\nYour final score was " + str(Global.score) + "."

func _on_play_again_pressed():
	get_tree().change_scene_to_file("res://Levels/Level1.tscn")


func _on_quit_pressed():
	get_tree().quit()
