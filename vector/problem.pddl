(define (problem PROBLEM_VECTOR)
    (:objects
        p1 - position
        p2 - position
        p3 - position
        a - value
        b - value
        c - value
    )
    (:init
        (nextto p2 p1)
        (nextto p3 p2)
        (hasvalue p1 a)
        (hasvalue p2 b)
        (hasvalue p3 c)
    )
    (:goal
        (and 
            (hasvalue p1 c)
            (hasvalue p2 b)
            (hasvalue p3 a)
        )
    )
)