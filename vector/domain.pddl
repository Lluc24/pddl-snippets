(define (domain DOMAIN_VECTOR)
    (:requirements :strips :typing)
    (:types position value - object)
    (:predicates 
        (hasvalue ?pos - position ?val - value)
        (nextto ?x - position ?y - position)
    )
    (:action swap
        :parameters (
            ?p1 - position
            ?v1 - value 
            ?p2 - position
            ?v2 - value
        )
        :precondition
            (and
                (nextto ?p2 ?p1)
                (hasvalue ?p1 ?v1)
                (hasvalue ?p2 ?v2)
            )
        :effect
            (and
                (not (hasvalue ?p1 ?v1))
                (not (hasvalue ?p2 ?v2))
                (hasvalue ?p1 ?v2)
                (hasvalue ?p2 ?v1)
            )
    )
)