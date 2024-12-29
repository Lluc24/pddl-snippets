A European city wants to solve the mobility issue in peripheral neighborhoods using "SmartBus," a system of minibuses (14 seats, 2 reserved for mobility-reduced persons). Each neighborhood has assigned one or more minibuses, with a fixed set of stops connecting the neighborhood to the city transport system. Residents can request transportation via an app, specifying the origin and destination stops. The SmartBus will take passengers from their origin to destination, possibly picking up or dropping off others on the way.

The planning problem requires:
1. A simple plan to serve all passenger requests with the available minibuses.
2. A PDDL domain modeling predicates, actions, and problem definition to determine:
   - Which bus to use.
   - The route each bus must follow.

The provided example has 14 stops (p2701 to p2714) and one available bus (SBus027). The bus starts empty at stop p2701. Passengers have specific origin and destination stops as listed below:

Passenger | Origin  | Destination
----------|---------|------------
Esteban   | p2701   | p2703
Cristina  | p2707   | p2712
Alba*     | p2703   | p2707
Daniel    | p2714   | p2710
Luis      | p2711   | p2705
Beatriz   | p2703   | p2707
Lorena    | p2703   | p2707
Jesus     | p2703   | p2708
Jordi     | p2706   | p2705
Raul      | p2701   | p2705
Maria     | p2713   | p2708
Kilian*   | p2713   | p2708
Estela    | p2706   | p2711
Sebas*    | p2712   | p2705
Fabiola*  | p2706   | p2710
Martina   | p2701   | p2711
Noelia    | p2707   | p2705
Susana    | p2714   | p2710
Pau       | p2704   | p2710
Xavier*   | p2703   | p2705

Constraints:
1. Passengers marked with * are mobility-reduced.
2. Only mobility-reduced passengers can use reserved seats.
3. At the start of the journey, the bus is empty and parked at p2701.
4. The plan must ensure all passengers reach their destinations.