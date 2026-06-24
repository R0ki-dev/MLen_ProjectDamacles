extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
var IsPlayingIntro: bool = true

func _on_ready() -> void:
	animation_player.play("Tell/crouch_to_stand")
	await $AnimationPlayer.animation_finished
	IsPlayingIntro = false

func WalkForward():
	if IsPlayingIntro == true:
		return
	animation_player.play("Tell/03_Walk")

func Idle():
	if IsPlayingIntro == true:
		return
	animation_player.play("Tell/01_Idle")

func Sprint():
	if IsPlayingIntro == true:
		return
	animation_player.play("Tell/02_Run")
