; Map of the Depots:                                  
; 000=111 222 333 444             
; *0  1*1 2*2 3*  4*              
;--------------------             
; 0: depot0 area
; 1: depot1 area
; 2: depot2 area
; 3: depot3 area
; 4: depot4 area
; *: Depot access point
; =: Transit area

(define (problem storage-10)
(:domain Storage-TimeConstraints)
(:objects
	depot0-1-1 depot0-1-2 depot0-1-3 depot0-2-1 depot0-2-2 depot1-1-1 depot1-1-2 depot1-1-3 depot1-2-1 depot1-2-2 depot1-2-3 depot2-1-1 depot2-1-2 depot2-1-3 depot2-2-1 depot2-2-2 depot2-2-3 depot3-1-1 depot3-1-2 depot3-1-3 depot3-2-1 depot3-2-2 depot4-1-1 depot4-1-2 depot4-1-3 depot4-2-1 depot4-2-2 container-0-0 container-0-1 container-0-2 container-0-3 container-1-0 container-1-1 container-1-2 container-1-3 container-2-0 container-2-1 - storearea
	hoist0 hoist1 hoist2 hoist3 hoist4 - hoist
	crate0 crate1 crate2 crate3 crate4 crate5 crate6 crate7 crate8 crate9 - crate
	container0 container1 container2 - container
	depot0 depot1 depot2 depot3 depot4 - depot
	transit0 - transitarea)

(:init
	(connected depot0-1-1 depot0-2-1)
	(connected depot0-1-1 depot0-1-2)
	(connected depot0-1-2 depot0-2-2)
	(connected depot0-1-2 depot0-1-3)
	(connected depot0-1-2 depot0-1-1)
	(connected depot0-1-3 depot0-1-2)
	(connected depot0-2-1 depot0-1-1)
	(connected depot0-2-1 depot0-2-2)
	(connected depot0-2-2 depot0-1-2)
	(connected depot0-2-2 depot0-2-1)
	(connected depot1-1-1 depot1-2-1)
	(connected depot1-1-1 depot1-1-2)
	(connected depot1-1-2 depot1-2-2)
	(connected depot1-1-2 depot1-1-3)
	(connected depot1-1-2 depot1-1-1)
	(connected depot1-1-3 depot1-2-3)
	(connected depot1-1-3 depot1-1-2)
	(connected depot1-2-1 depot1-1-1)
	(connected depot1-2-1 depot1-2-2)
	(connected depot1-2-2 depot1-1-2)
	(connected depot1-2-2 depot1-2-3)
	(connected depot1-2-2 depot1-2-1)
	(connected depot1-2-3 depot1-1-3)
	(connected depot1-2-3 depot1-2-2)
	(connected depot2-1-1 depot2-2-1)
	(connected depot2-1-1 depot2-1-2)
	(connected depot2-1-2 depot2-2-2)
	(connected depot2-1-2 depot2-1-3)
	(connected depot2-1-2 depot2-1-1)
	(connected depot2-1-3 depot2-2-3)
	(connected depot2-1-3 depot2-1-2)
	(connected depot2-2-1 depot2-1-1)
	(connected depot2-2-1 depot2-2-2)
	(connected depot2-2-2 depot2-1-2)
	(connected depot2-2-2 depot2-2-3)
	(connected depot2-2-2 depot2-2-1)
	(connected depot2-2-3 depot2-1-3)
	(connected depot2-2-3 depot2-2-2)
	(connected depot3-1-1 depot3-2-1)
	(connected depot3-1-1 depot3-1-2)
	(connected depot3-1-2 depot3-2-2)
	(connected depot3-1-2 depot3-1-3)
	(connected depot3-1-2 depot3-1-1)
	(connected depot3-1-3 depot3-1-2)
	(connected depot3-2-1 depot3-1-1)
	(connected depot3-2-1 depot3-2-2)
	(connected depot3-2-2 depot3-1-2)
	(connected depot3-2-2 depot3-2-1)
	(connected depot4-1-1 depot4-2-1)
	(connected depot4-1-1 depot4-1-2)
	(connected depot4-1-2 depot4-2-2)
	(connected depot4-1-2 depot4-1-3)
	(connected depot4-1-2 depot4-1-1)
	(connected depot4-1-3 depot4-1-2)
	(connected depot4-2-1 depot4-1-1)
	(connected depot4-2-1 depot4-2-2)
	(connected depot4-2-2 depot4-1-2)
	(connected depot4-2-2 depot4-2-1)
	(connected transit0 depot0-1-3)
	(connected transit0 depot1-1-1)
	(in depot0-1-1 depot0)
	(in depot0-1-2 depot0)
	(in depot0-1-3 depot0)
	(in depot0-2-1 depot0)
	(in depot0-2-2 depot0)
	(in depot1-1-1 depot1)
	(in depot1-1-2 depot1)
	(in depot1-1-3 depot1)
	(in depot1-2-1 depot1)
	(in depot1-2-2 depot1)
	(in depot1-2-3 depot1)
	(in depot2-1-1 depot2)
	(in depot2-1-2 depot2)
	(in depot2-1-3 depot2)
	(in depot2-2-1 depot2)
	(in depot2-2-2 depot2)
	(in depot2-2-3 depot2)
	(in depot3-1-1 depot3)
	(in depot3-1-2 depot3)
	(in depot3-1-3 depot3)
	(in depot3-2-1 depot3)
	(in depot3-2-2 depot3)
	(in depot4-1-1 depot4)
	(in depot4-1-2 depot4)
	(in depot4-1-3 depot4)
	(in depot4-2-1 depot4)
	(in depot4-2-2 depot4)
	(on crate0 container-0-0)
	(on crate1 container-0-1)
	(on crate2 container-0-2)
	(on crate3 container-0-3)
	(on crate4 container-1-0)
	(on crate5 container-1-1)
	(on crate6 container-1-2)
	(on crate7 container-1-3)
	(on crate8 container-2-0)
	(on crate9 container-2-1)
	(in crate0 container0)
	(in crate1 container0)
	(in crate2 container0)
	(in crate3 container0)
	(in crate4 container1)
	(in crate5 container1)
	(in crate6 container1)
	(in crate7 container1)
	(in crate8 container2)
	(in crate9 container2)
	(in container-0-0 container0)
	(in container-0-1 container0)
	(in container-0-2 container0)
	(in container-0-3 container0)
	(in container-1-0 container1)
	(in container-1-1 container1)
	(in container-1-2 container1)
	(in container-1-3 container1)
	(in container-2-0 container2)
	(in container-2-1 container2)
	(connected loadarea container-0-0) 
	(connected container-0-0 loadarea)
	(connected loadarea container-0-1) 
	(connected container-0-1 loadarea)
	(connected loadarea container-0-2) 
	(connected container-0-2 loadarea)
	(connected loadarea container-0-3) 
	(connected container-0-3 loadarea)
	(connected loadarea container-1-0) 
	(connected container-1-0 loadarea)
	(connected loadarea container-1-1) 
	(connected container-1-1 loadarea)
	(connected loadarea container-1-2) 
	(connected container-1-2 loadarea)
	(connected loadarea container-1-3) 
	(connected container-1-3 loadarea)
	(connected loadarea container-2-0) 
	(connected container-2-0 loadarea)
	(connected loadarea container-2-1) 
	(connected container-2-1 loadarea)  
	(connected depot0-2-1 loadarea)
	(connected loadarea depot0-2-1)
	(connected depot1-2-2 loadarea)
	(connected loadarea depot1-2-2)
	(connected depot2-2-2 loadarea)
	(connected loadarea depot2-2-2)
	(connected depot3-2-2 loadarea)
	(connected loadarea depot3-2-2)
	(connected depot4-2-2 loadarea)
	(connected loadarea depot4-2-2)  
	(clear depot0-2-2)
	(clear depot0-1-2)
	(clear depot0-1-3)
	(clear depot1-1-1)
	(clear depot1-1-2)
	(clear depot1-1-3)
	(clear depot1-2-1)
	(clear depot1-2-2)
	(clear depot1-2-3)
	(clear depot2-1-1)
	(clear depot2-1-2)
	(clear depot2-1-3)
	(clear depot2-2-1)
	(clear depot2-2-2)
	(clear depot2-2-3)
	(clear depot3-1-1)
	(clear depot3-1-3)
	(clear depot4-1-1)
	(clear depot4-1-2)
	(clear depot4-1-3)
	(clear depot4-2-1)
	(clear depot4-2-2)  
	(at hoist0 depot0-1-1)
	(available hoist0)
	(at hoist1 depot0-2-1)
	(available hoist1)
	(at hoist2 depot3-1-2)
	(available hoist2)
	(at hoist3 depot3-2-1)
	(available hoist3)
	(at hoist4 depot3-2-2)
	(available hoist4)
	(compatible crate0 crate1)
	(compatible crate1 crate0)
	(compatible crate0 crate2)
	(compatible crate2 crate0)
	(compatible crate0 crate3)
	(compatible crate3 crate0)
	(compatible crate0 crate4)
	(compatible crate4 crate0)
	(compatible crate1 crate2)
	(compatible crate2 crate1)
	(compatible crate1 crate3)
	(compatible crate3 crate1)
	(compatible crate1 crate4)
	(compatible crate4 crate1)
	(compatible crate2 crate3)
	(compatible crate3 crate2)
	(compatible crate2 crate4)
	(compatible crate4 crate2)
	(compatible crate3 crate4)
	(compatible crate4 crate3)
	(compatible crate5 crate6)
	(compatible crate6 crate5)
	(compatible crate5 crate7)
	(compatible crate7 crate5)
	(compatible crate5 crate8)
	(compatible crate8 crate5)
	(compatible crate5 crate9)
	(compatible crate9 crate5)
	(compatible crate6 crate7)
	(compatible crate7 crate6)
	(compatible crate6 crate8)
	(compatible crate8 crate6)
	(compatible crate6 crate9)
	(compatible crate9 crate6)
	(compatible crate7 crate8)
	(compatible crate8 crate7)
	(compatible crate7 crate9)
	(compatible crate9 crate7)
	(compatible crate8 crate9)
	(compatible crate9 crate8))

(:goal (and))

(:constraints (and
	(forall (?c - crate) (at end (exists (?d - depot) (in ?c ?d))))

	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate1 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate2 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate3 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate4 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate5 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate6 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate7 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate8 ?d2)))
	(sometime-before (exists (?d1 - depot) (in crate0 ?d1))
			 (exists (?d2 - depot) (in crate9 ?d2)))

	(forall (?c - crate) (within 66 (exists (?d - depot) (in ?c ?d))))))

(:metric minimize (total-time))
)
