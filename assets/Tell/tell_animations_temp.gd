extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
var IsPlayingIntro_Listener: bool = true

func SetIntroDone():
	IsPlayingIntro_Listener = false

func WalkForward():
	if IsPlayingIntro_Listener == true:
		return
	animation_player.play("Tell/03_Walk")

func Idle():
	if IsPlayingIntro_Listener == true:
		return
	animation_player.play("Tell/01_Idle")

func Sprint():
	if IsPlayingIntro_Listener == true:
		return
	animation_player.play("Tell/02_Run")

func _on_ready() -> void:
	animation_player.play("Tell/crouch_to_stand")
