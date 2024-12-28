(define (domain DOMAIN_BLOCKSWORLD)
    (:requirements :strips)
    (:predicates
        (handempty)
        (ontable ?BLOCK)
        (clear ?BLOCK)
        (holding ?BLOCK)
        (on ?BLOCK1 ?BLOCK2)
    )
    (:action PICK-UP
        :parameters (?BLOCK)
        :precondition 
            (and 
                (ontable ?BLOCK)
                (handempty)
                (clear ?BLOCK)
            )
        :effect
            (and 
                (not (ontable ?BLOCK))
                (not (handempty))
                (not (clear ?BLOCK))
                (holding ?BLOCK)
            )
    )
    (:action PUT-DOWN
        :parameters (?BLOCK)
        :precondition (holding ?BLOCK)
        :effect 
            (and 
                (ontable ?BLOCK)
                (clear ?BLOCK)
                (not (holding ?BLOCK))
                (handempty)
            )
    )
    (:action STACK
        :parameters (?BLOCK1 ?BLOCK2)
        :precondition 
            (and 
                (holding ?BLOCK1)
                (clear ?BLOCK2)
            )
        :effect
            (and 
                (not (holding ?BLOCK1))
                (not (clear ?BLOCK2))
                (on ?BLOCK1 ?BLOCK2)
                (handempty)
                (clear ?BLOCK1)
            )
    )
    (:action UNSTACK
        :parameters (?BLOCK1 ?BLOCK2)
        :precondition 
            (and 
                (on ?BLOCK1 ?BLOCK2)
                (clear ?BLOCK1)
                (handempty)
            )
        :effect
            (and 
                (not (on ?BLOCK1 ?BLOCK2))
                (not (clear ?BLOCK1))
                (not (handempty))
                (holding ?BLOCK1)
                (clear ?BLOCK2)
            )
    )
)