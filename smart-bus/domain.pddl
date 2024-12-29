(define (domain DOMAIN_SMARTBUS)
    (:requirements :strips :typing :adl)
    (:types
        bus bus_stop user seat - object
    )
    (:predicates
        (origin ?u - user ?bs - bus_stop)
        (destination ?u - user ?bs - bus_stop)
        (bus_at ?b - bus ?bs - bus_stop)
        (seat_at ?s - seat ?b - bus)
        (user_at ?u - user ?b - bus)
        (iswaiting ?u - user)
        (occupied ?s - seat)
        (seatPRM ?s - seat)
        (userPRM ?u - user)
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
                (seat_at ?seat ?bus)
                (bus_at ?bus ?stop)
                (origin ?user ?stop)
                (iswaiting ?user)
                (not (occupied ?seat))
                (imply (seatPRM ?seat) (userPRM ?user))
            )
        :effect
            (and
                (not (iswaiting ?user))
                (user_at ?user ?bus)
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
                (seat_at ?seat ?bus)
                (bus_at ?bus ?stop)
                (user_at ?user ?bus)
                (destination ?user ?stop)
            )
        :effect
            (and 
                (not (user_at ?user ?bus))
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
            (and 
                (bus_at ?bus ?from)
            )
        :effect
            (and
                (not (bus_at ?bus ?from))
                (bus_at  ?bus ?to)
            ) 
    )
)