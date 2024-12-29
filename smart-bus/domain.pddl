(define (domain DOMAIN_SMARTBUS)
    (:requirements :strips :typing :adl)
    (:types
        bus bus_stop occupant - object
        user seat - occupant
    )
    (:predicates
        (origin ?u - user ?bs - bus_stop)
        (destination ?u - user ?bs - bus_stop)
        (located ?b - bus ?bs - bus_stop)
        (at ?o - occupant ?b - bus)
        (iswaiting ?u - user)
        (occupied ?s - seat)
        (isPRM ?o - occupant)
        (served ?u - user)
    )
    (:action get_on
        :parameters (
            ?user - user
            ?stop - bus_stop
            ?bus - bus
            ?seat - seat
        )
        :precondition
            (and
                (at ?seat ?bus)
                (located ?bus ?stop)
                (origin ?user ?stop)
                (iswaiting ?user)
                (not (occupied ?seat))
                (imply (isPRM ?seat) (isPRM ?user))
            )
        :effect
            (and
                (not (iswaiting ?user))
                (at ?user ?bus)
                (occupied ?seat)
            )
    )
    (:action get_off
        :parameters (
            ?user - user
            ?stop - bus_stop
            ?bus - bus
            ?seat - seat
        )
        :precondition
            (and
                (at ?seat ?bus)
                (located ?bus ?stop)
                (at ?user ?bus)
                (destination ?user ?stop)
            )
        :effect
            (and 
                (not (at ?user ?bus))
                (not (occupied ?seat))
                (served ?user)
            )
    )
    (:action move
        :parameters (
            ?bus - bus
            ?from - bus_stop
            ?to - bus_stop
        )
        :precondition
            (located ?bus ?from)
        :effect
            (and
                (not (located ?bus ?from))
                (located  ?bus ?to)
            ) 
    )
)