(define (problem PROBLEM_BLOCKSWORLD)
    (:domain DOMAIN_BLOCKSWORLD)
    (:objects
        A
        B
        C
        D
        E
        F
    )
    (:init
        (ontable F)
        (ontable B)
        (ontable E)
        (ontable C)
        (ontable D)
        (on A, F)
        (clear A)
        (clear B)
        (clear C)
        (clear D)
        (clear E)
        (handempty)
    )
    (:goal 
        (and 
            (on A, B)
            (on B, C)
            (on C, D)
            (on D, E)
            (on E, F)
        )
    )
)