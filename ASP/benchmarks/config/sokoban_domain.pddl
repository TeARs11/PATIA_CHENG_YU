;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Sokoban
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

(define (domain sokoban)
  (:requirements :strips :typing)
  (:types object place box person wall loc

  )
  (:predicates
	    (box_at ?x0 - loc ?y0 - loc)
		(empty ?x0 - loc ?y0 - loc)
		(adjsn ?x0 - loc ?y0 - loc)
		(adjwe ?y0 - loc ?y0 - loc)
		(wall_at ?x0 - loc ?y0 - loc)
		(person_at ?x0 - loc ?y0 - loc)
  )


  (:action move_person_up
	     :parameters (?x0 - loc ?y0 - loc ?y1 - loc)
	     :precondition (and (person_at ?x0 ?y0) (empty ?x0 ?y1) (adjsn ?y1 ?y0))
	     :effect (and (person_at ?x0 ?y1) (empty ?x0 ?y0) (not (empty ?x0 ?y1)) (not (person_at ?x0 ?y0)))
  )

  (:action move_person_down
	     :parameters (?x0 - loc ?y0 - loc ?y1 - loc)
	     :precondition (and (person_at ?x0 ?y0) (empty ?x0 ?y1) (adjsn ?y0 ?y1))
	     :effect (and (person_at ?x0 ?y1) (empty ?x0 ?y0) (not (empty ?x0 ?y1)) (not (person_at ?x0 ?y0)))
  )

  (:action move_person_left
	     :parameters (?x0 - loc ?y0 - loc ?x1 - loc)
	     :precondition (and (person_at ?x0 ?y0) (empty ?x1 ?y0) (adjwe ?x1 ?x0))
	     :effect (and (person_at ?x1 ?y0) (empty ?x0 ?y0) (not (empty ?x1 ?y0)) (not (person_at ?x0 ?y0)))
  )

  (:action move_person_right
	     :parameters (?x0 - loc ?y0 - loc ?x1 - loc)
	     :precondition (and (person_at ?x0 ?y0) (empty ?x1 ?y0) (adjwe ?x0 ?x1))
	     :effect (and (person_at ?x1 ?y0) (empty ?x0 ?y0) (not (empty ?x1 ?y0))  (not (person_at ?x0 ?y0)))
  )

  (:action move_box_up
	     :parameters (?x0 - loc ?y0 - loc ?y1 - loc ?y2 - loc)
	     :precondition (and (person_at ?x0 ?y0) (box_at ?x0 ?y1) (empty ?x0 ?y2) (adjsn ?y1 ?y0) (adjsn ?y2 ?y1))
	     :effect (and (person_at ?x0 ?y1) (box_at ?x0 ?y2) (empty ?x0 ?y0) (not (empty ?x0 ?y2)) (not (person_at ?x0 ?y0)) (not (box_at ?x0 ?y1)))
  )

  (:action move_box_down
	     :parameters (?x0 - loc ?y0 - loc ?y1 - loc ?y2 - loc)
	     :precondition (and (person_at ?x0 ?y0) (box_at ?x0 ?y1) (empty ?x0 ?y2) (adjsn ?y0 ?y1) (adjsn ?y1 ?y2))
	     :effect (and (person_at ?x0 ?y1) (box_at ?x0 ?y2) (empty ?x0 ?y0) (not (empty ?x0 ?y2)) (not (person_at ?x0 ?y0)) (not (box_at ?x0 ?y1)))
  )

  (:action move_box_left
	     :parameters (?x0 - loc ?y0 - loc ?x1 - loc ?x2 - loc)
	     :precondition (and (person_at ?x0 ?y0) (box_at ?x1 ?y0) (empty ?x2 ?y0) (adjwe ?x1 ?x0) (adjwe ?x2 ?x1))
	     :effect (and (person_at ?x1 ?y0) (box_at ?x2 ?y0) (empty ?x0 ?y0) (not (empty ?x2 ?y0)) (not (person_at ?x0 ?y0)) (not (box_at ?x1 ?y0)))
  )

  (:action move_box_right
	     :parameters (?x0 - loc ?y0 - loc ?x1 - loc ?x2 - loc)
	     :precondition (and (person_at ?x0 ?y0) (box_at ?x1 ?y0) (empty ?x2 ?y0) (adjwe ?x0 ?x1) (adjwe ?x1 ?x2))
	     :effect (and (person_at ?x1 ?y0) (box_at ?x2 ?y0) (empty ?x0 ?y0) (not (empty ?x2 ?y0)) (not (person_at ?x0 ?y0)) (not (box_at ?x1 ?y0)))
  )

)