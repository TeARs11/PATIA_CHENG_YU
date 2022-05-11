


(define (problem turnandopen-3-10-30)
(:domain turnandopen-strips)
(:objects robot1 robot2 robot3 - robot
rgripper1 lgripper1 rgripper2 lgripper2 rgripper3 lgripper3 - gripper
room1 room2 room3 room4 room5 room6 room7 room8 room9 room10 - room
door1 door2 door3 door4 door5 door6 door7 door8 door9 - door
ball1 ball2 ball3 ball4 ball5 ball6 ball7 ball8 ball9 ball10 ball11 ball12 ball13 ball14 ball15 ball16 ball17 ball18 ball19 ball20 ball21 ball22 ball23 ball24 ball25 ball26 ball27 ball28 ball29 ball30 - object)
(:init
(closed door1)
(closed door2)
(closed door3)
(closed door4)
(closed door5)
(closed door6)
(closed door7)
(closed door8)
(closed door9)
(connected room1 room2 door1)
(connected room2 room1 door1)
(connected room2 room3 door2)
(connected room3 room2 door2)
(connected room3 room4 door3)
(connected room4 room3 door3)
(connected room4 room5 door4)
(connected room5 room4 door4)
(connected room5 room6 door5)
(connected room6 room5 door5)
(connected room6 room7 door6)
(connected room7 room6 door6)
(connected room7 room8 door7)
(connected room8 room7 door7)
(connected room8 room9 door8)
(connected room9 room8 door8)
(connected room9 room10 door9)
(connected room10 room9 door9)
(at-robby robot1 room3)
(free robot1 rgripper1)
(free robot1 lgripper1)
(at-robby robot2 room9)
(free robot2 rgripper2)
(free robot2 lgripper2)
(at-robby robot3 room6)
(free robot3 rgripper3)
(free robot3 lgripper3)
(at ball1 room5)
(at ball2 room9)
(at ball3 room1)
(at ball4 room4)
(at ball5 room8)
(at ball6 room3)
(at ball7 room3)
(at ball8 room4)
(at ball9 room4)
(at ball10 room5)
(at ball11 room8)
(at ball12 room3)
(at ball13 room4)
(at ball14 room6)
(at ball15 room1)
(at ball16 room4)
(at ball17 room8)
(at ball18 room6)
(at ball19 room6)
(at ball20 room9)
(at ball21 room2)
(at ball22 room6)
(at ball23 room6)
(at ball24 room2)
(at ball25 room4)
(at ball26 room2)
(at ball27 room10)
(at ball28 room3)
(at ball29 room4)
(at ball30 room8)
)
(:goal
(and
(at ball1 room9)
(at ball2 room8)
(at ball3 room7)
(at ball4 room9)
(at ball5 room2)
(at ball6 room4)
(at ball7 room2)
(at ball8 room4)
(at ball9 room8)
(at ball10 room5)
(at ball11 room9)
(at ball12 room5)
(at ball13 room7)
(at ball14 room2)
(at ball15 room1)
(at ball16 room8)
(at ball17 room5)
(at ball18 room9)
(at ball19 room4)
(at ball20 room1)
(at ball21 room7)
(at ball22 room5)
(at ball23 room6)
(at ball24 room3)
(at ball25 room6)
(at ball26 room9)
(at ball27 room4)
(at ball28 room5)
(at ball29 room2)
(at ball30 room7)
)
)
(:metric minimize (total-time))

)


