extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer
var IsPlayingIntro_Listener: bool = true

func SetIntroDone():
	IsPlayingIntro_Listener = false

func WalkForward():
	if IsPlayingIntro_Listener == true:
		return
	animation_player.play("Tell/WalkForward")

func Idle():
	if IsPlayingIntro_Listener == true:
		return
	animation_player.play("Tell/Standing_Idle")

func Sprint():
	if IsPlayingIntro_Listener == true:
		return
	animation_player.play("Tell/SprintForward")

func _on_ready() -> void:
	animation_player.play("Tell/Crouch_To_Stand")
