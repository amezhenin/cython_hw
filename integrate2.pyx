from __future__ import division
# # f(0, 10, 100000) --> 28.3ms (1.4x)
def f(x ):
    return x**4 - 3 * x

def integrate_f (a , b , N ):
    s = 0
    dx = (b - a) / N
    for i in range (N ):
        s += f( a + i * dx )
    return s * dx

