We are asked to traduce the following model in strips language to PDDL using strips

DOMAIN:


OP: pick-up(x)

PRE: clear(x), ontable(x), handempty()
DEL: clear(x), ontable(x), handempty()
ADD: holding(x)


OP: put-down(x)

PRE: holding(x)
DEL: holding(x)
ADD: clear(x), ontable(x), handempty()


OP: stack(x, y)

PRE: clear(y), holding(x)
DEL: clear(y), holding(x)
ADD: clear(x), handempty(), on(x, y)


OP: unstack(x, y)

PRE: on(x, y), clear(x), handempty()
DEL: on(x, y), clear(x), handempty()
ADD: holding(x), clear(y)



PROBLEM:


START:
clear(A), clear(B), clear(E), clear(C), clear(D), ontable(F), ontable(B), ontable(E), 
ontable(C), ontable(D), on(A, F), handempty()

GLOAL:
on(F, E), on(E, D), on(D, C), on(C, B), on(B, A)