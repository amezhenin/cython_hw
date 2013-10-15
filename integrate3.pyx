from __future__ import division
import cython

# f(0, 10, 100000) --> 13.7ms (3x)

@cython.locals(x=cython.double)
def f(x ):
    return x**4 - 3 * x


@cython.locals(a=cython.double, b=cython.double,
               N=cython.int, s=cython.double,
               dx=cython.double, i=cython.int)
def integrate_f (a , b , N ):
    s = 0
    dx = (b - a) / N
    for i in range (N ):
        s += f( a + i * dx )
    return s * dx

