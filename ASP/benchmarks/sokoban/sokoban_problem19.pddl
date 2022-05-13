(define (problem sokoban_problem19) 
    (:domain sokoban)
    (:objects 
        h0 h1 h2 h3 h4 h5 h6  v0 v1 v2 v3 v4 v5 v6 v7 v8 v9 - loc 
    )
    (:init 
       (adjsn h0 h1) (adjsn h1 h2) (adjsn h2 h3) (adjsn h3 h4) (adjsn h4 h5) (adjsn h5 h6) 
        (adjwe v0 v1) (adjwe v1 v2) (adjwe v2 v3) (adjwe v3 v4) (adjwe v4 v5) (adjwe v5 v6) (adjwe v6 v7) (adjwe v7 v8) (adjwe v8 v9) 
        (wall_at v0 h0) (wall_at v1 h0) (wall_at v2 h0) (wall_at v3 h0) (wall_at v4 h0) (wall_at v5 h0) (wall_at v6 h0) (wall_at v7 h0) (wall_at v8 h0) (wall_at v9 h0) (wall_at v0 h1)  (empty v1 h1)  (empty v2 h1)  (empty v3 h1)  (empty v4 h1) (wall_at v5 h1)  (empty v6 h1)  (empty v7 h1)  (empty v8 h1) (wall_at v9 h1) (wall_at v0 h2)  (empty v1 h2) (wall_at v2 h2)  (empty v3 h2)  (empty v4 h2) (box_at v5 h2)  (empty v6 h2)  (empty v7 h2)  (empty v8 h2) (wall_at v9 h2) (wall_at v0 h3)  (empty v1 h3)  (empty v2 h3) (box_at v3 h3)  (empty v4 h3) (box_at v5 h3) (person_at v6 h3)  (empty v7 h3)  (empty v8 h3) (wall_at v9 h3) (wall_at v0 h4) (wall_at v1 h4) (wall_at v2 h4) (box_at v3 h4)  (empty v4 h4) (wall_at v5 h4) (wall_at v6 h4) (wall_at v7 h4) (wall_at v8 h4) (wall_at v9 h4)  (empty v0 h5)  (empty v1 h5) (wall_at v2 h5)  (empty v3 h5)  (empty v4 h5) (wall_at v5 h5)  (empty v6 h5)  (empty v7 h5)  (empty v8 h5)  (empty v9 h5)  (empty v0 h6)  (empty v1 h6) (wall_at v2 h6) (wall_at v3 h6) (wall_at v4 h6) (wall_at v5 h6)  (empty v6 h6)  (empty v7 h6)  (empty v8 h6)  (empty v9 h6) 
        
    )
    (:goal  
         (and (box_at v4 h2)  (box_at v5 h2)  (box_at v4 h3)  (box_at v5 h3) )
    )
)