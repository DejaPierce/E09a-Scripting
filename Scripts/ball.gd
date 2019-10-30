extends RigidBody2D

export var maxspeed = 300

signal lives
signal score

func _ready():
 contact_monitor = true
 set_max_contacts_reported(4)
 var WorldNode = get_node("/root/World")
 connect("score", WorldNode, "increase_score")
 connect("lives", WorldNode, "decrease_lives")

func _physics_process(delta):
 var bodies = get_colliding_bodies()
 for body in bodies:
<<<<<<< HEAD
  if body.is_in_group("Tiles"):
=======
  if body.is_in_group("Tile"):
>>>>>>> 2b5b68f16f885ef3e20ace810e7f4e197329abda
   emit_signal("score",body.score)
   body.queue_free()
  if body.get_name() == "Paddle":
   pass
<<<<<<< HEAD

=======
  
>>>>>>> 2b5b68f16f885ef3e20ace810e7f4e197329abda
 if position.y > get_viewport_rect().end.y:
  emit_signal("lives")
  queue_free()