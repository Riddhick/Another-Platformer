extends KinematicBody2D

class_name Actor

const FLOOR_NORMAL =Vector2.UP
var velocity := Vector2.ZERO # .ZERO for a vector with 0 values
export var gravity := 3000.0 #Export makes it possible to edit this variable from the Inspector menu.  
export var speed := Vector2(300.0,1000.0)
 
