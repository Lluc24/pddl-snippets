(define (problem PROBLEM_SMARTBUS)
    (:objects

        Esteban - user
        Daniel - user
        Lorena - user
        Raul - user
        Estela - user
        Martina - user
        Pau - user
        Cristina - user
        Luis - user
        Jesus - user
        Maria - user
        Sebas - user
        Noelia - user
        Xavier - user
        Alba - user
        Beatriz - user
        Jordi - user
        Kilian - user
        Fabiola - user
        Susana - user
        Ruth - user

        p2701 - bus_stop
        p2702 - bus_stop
        p2703 - bus_stop
        p2704 - bus_stop
        p2705 - bus_stop
        p2706 - bus_stop
        p2707 - bus_stop
        p2708 - bus_stop
        p2709 - bus_stop
        p2710 - bus_stop
        p2711 - bus_stop
        p2712 - bus_stop
        p2713 - bus_stop
        p2714 - bus_stop

        SBus027 - bus
        seat01 - seat
        seat02 - seat
        seat03 - seat
        seat04 - seat
        seat05 - seat
        seat06 - seat
        seat07 - seat
        seat08 - seat
        seat09 - seat
        seat10 - seat
        seat11 - seat
        seat12 - seat
        seat13 - seat
        seat14 - seat
    )

    (:init

        (userPRM Sebas)
        (userPRM Xavier)
        (userPRM Alba)
        (userPRM Kilian)
        (userPRM Fabiola)

        (seatPRM seat09)
        (seatPRM seat10)
    
        (origin Esteban p2701)
        (destination Esteban p2703)
        (iswaiting Esteban)
        (not (served Esteban))

        (origin Daniel p2714)
        (destination Daniel p2710)
        (iswaiting Daniel)
        (not (served Daniel))

        (origin Lorena p2703)
        (destination Lorena p2707)
        (iswaiting Lorena)
        (not (served Lorena))

        (origin Raul p2701)
        (destination Raul p2705)
        (iswaiting Raul)
        (not (served Raul))

        (origin Estela p2706)
        (destination Estela p2711)
        (iswaiting Estela)
        (not (served Estela))

        (origin Martina p2701)
        (destination Martina p2711)
        (iswaiting Martina)
        (not (served Martina))

        (origin Pau p2704)
        (destination Pau p2710)
        (iswaiting Pau)
        (not (served Pau))

        (origin Cristina p2707)
        (destination Cristina p2712)
        (iswaiting Cristina)
        (not (served Cristina))

        (origin Luis p2711)
        (destination Luis p2705)
        (iswaiting Luis)
        (not (served Luis))

        (origin Jesus p2703)
        (destination Jesus p2708)
        (iswaiting Jesus)
        (not (served Jesus))
        
        (origin Maria p2713)
        (destination Maria p2708)
        (iswaiting Maria)
        (not (served Maria))

        (origin Sebas p2712)
        (destination Sebas p2710)
        (iswaiting Sebas)
        (not (served Sebas))

        (origin Noelia p2707)
        (destination Noelia p2705)
        (iswaiting Noelia)
        (not (served Noelia))

        (origin Xavier p2703)
        (destination Xavier p2705)
        (iswaiting Xavier)
        (not (served Xavier))

        (origin Alba p2703)
        (destination Alba p2707)
        (iswaiting Alba)
        (not (served Alba))

        (origin Beatriz p2703)
        (destination Beatriz p2708)
        (iswaiting Beatriz)
        (not (served Beatriz))

        (origin Jordi p2706)
        (destination Jordi p2705)
        (iswaiting Jordi)
        (not (served Jordi))

        (origin Kilian p2713)
        (destination Kilian p2708)
        (iswaiting Kilian)
        (not (served Kilian))

        (origin Fabiola p2706)
        (destination Fabiola p2710)
        (iswaiting Fabiola)
        (not (served Fabiola))

        (origin Susana p2714)
        (destination Susana p2710)
        (iswaiting Susana)
        (not (served Susanav))

        (origin Ruth p2706)
        (destination Ruth p2710)
        (iswaiting Ruth)
        (not (served Ruth))

        (seat_at seat01 SBus027)
        (seat_at seat02 SBus027)
        (seat_at seat03 SBus027)
        (seat_at seat04 SBus027)
        (seat_at seat05 SBus027)
        (seat_at seat06 SBus027)
        (seat_at seat07 SBus027)
        (seat_at seat08 SBus027)
        (seat_at seat09 SBus027)
        (seat_at seat10 SBus027)
        (seat_at seat11 SBus027)
        (seat_at seat12 SBus027)
        (seat_at seat13 SBus027)
        (seat_at seat14 SBus027)

        (not (occupied seat01))
        (not (occupied seat02))
        (not (occupied seat03))
        (not (occupied seat04))
        (not (occupied seat05))
        (not (occupied seat06))
        (not (occupied seat07))
        (not (occupied seat08))
        (not (occupied seat09))
        (not (occupied seat10))
        (not (occupied seat11))
        (not (occupied seat12))
        (not (occupied seat13))
        (not (occupied seat14))

        (bus_at SBus027 p2701)
    )

    (:goal
        (forall (?user - user)
            (served ?user)
        )
    )
)