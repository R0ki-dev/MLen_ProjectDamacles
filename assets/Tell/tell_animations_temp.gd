extends Node3D

@onready var animation_player: AnimationPlayer = $AnimationPlayer

func WalkForward():
	animation_player.play("Tell/03_Walk")

func Idle():
	animation_player.play("Tell/01_Idle")

func Sprint():
	animation_player.play("Tell/02_Run")
