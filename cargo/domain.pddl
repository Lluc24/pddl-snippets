(define (domain DOMAIN_CARGO)
    (:requirements :strips)
    (:predicates 
        (plane ?PLANE)
        (package ?PACKAGE)
        (airport ?AIRPORT)
        (at ?OBJ ?PLACE)
        (empty ?PLANE)
    )
    (:action LOAD
        :parameters (?PACKAGE ?PLANE ?AIRPORT)
        :precondition
            (and 
                (package ?PACKAGE)
                (plane ?PLANE)
                (airport ?AIRPORT)
                (at ?PACKAGE ?AIRPORT)
                (at ?PLANE ?AIRPORT)
                (empty ?PLANE)
            )
        :effect
            (and 
                (not (at ?PACKAGE ?AIRPORT))
                (at ?PACKAGE ?PLANE)
                (not (empty ?PLANE))
            )
    )
    (:action UNLOAD
        :parameters (?PACKAGE ?PLANE ?AIRPORT)
        :precondition
            (and 
                (package ?PACKAGE)
                (plane ?PLANE)
                (airport ?AIRPORT)
                (at ?PACKAGE ?PLANE)
                (at ?PLANE ?AIRPORT)
            )
        :effect
            (and 
                (not (at ?PACKAGE ?PLANE))
                (at ?PACKAGE ?AIRPORT)
                (empty ?PLANE)
            )
    )
    (:action FLY
        :parameters (?PLANE ?AIRPORT1 ?AIRPORT2)
        :precondition
            (and 
                (plane ?PLANE)
                (airport ?AIRPORT1)
                (airport ?AIRPORT2)
                (at ?PLANE ?AIRPORT1)
            )
        :effect
            (and 
                (not (at ?PLANE ?AIRPORT1))
                (at ?PLANE ?AIRPORT2)
            )
    )
)