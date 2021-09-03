extends Node2D


# Declare member variables here. Examples:
# var a = 2
# var b = "text"
# Called when the node enters the scene tree for the first time.
func _ready():
	var fw = load("res://addons/fireworks/PlayFireworks.tscn").instance()
	$Label.rect_pivot_offset = $Label.rect_size/2
	$Label.rect_scale = Vector2.ONE *0.4
	$Label.visible = true
	add_child(fw)
	fw.play_text(the_script)
	yield(fw,"FireWorkDone")
	$Label/Tween.start()
	$Label/Tween.interpolate_property($Label,"rect_scale",0.4 * Vector2.ONE,Vector2.ONE,3,Tween.TRANS_ELASTIC,Tween.EASE_IN_OUT)
	$Label/Tween.interpolate_property($Label,"rect_rotation",0,2* 360,7,Tween.TRANS_ELASTIC,Tween.EASE_IN_OUT)
	yield($Label/Tween,"tween_all_completed")
	yield(get_tree().create_timer(1.0),"timeout")
	$Label/Tween.start()
	$Label/Tween.interpolate_property($Label,"rect_scale",null,Vector2.ZERO,1,Tween.TRANS_ELASTIC,Tween.EASE_IN_OUT)

	print("end")

var the_script = """# see instructions at the right side
# let's start simple
fountain 0.2 color:1 size:1.0
fountain 0.8 color:1 size:1.0
wait 1000
rocket 0.5 arandom:0
wait 2000

# flares
flare 0.2 lifetime:7
flare 0.4 lifetime:7
flare 0.6 lifetime:7
flare 0.8 lifetime:7

# rocket zig zag
rocket 0.2
wait 300
rocket 0.4
wait 300
rocket 0.6
wait 300
rocket 0.8
wait 300
rocket 0.6
wait 300
rocket 0.4
wait 300
rocket 0.2
wait 300
rocket 0.4
wait 300
rocket 0.6
wait 300
rocket 0.8

wait 4000

# rocket zig zag
rocket 0.2
wait 300
rocket 0.4
wait 300
rocket 0.6
wait 300
rocket 0.8
wait 300
rocket 0.6
wait 300
rocket 0.4
wait 300
rocket 0.2
wait 300
rocket 0.4
wait 300
rocket 0.6
wait 300
rocket 0.8

# big bang
rocket 0.5 effect:cluster
wait 3000
rocket 0.5 effect:glitter
wait 100
rocket 0.75 effect:glitter
wait 100
rocket 0.25 effect:glitter
"""
