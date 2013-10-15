from __future__ import division
# f(0, 10, 100000) --> 0.475ms (84x)

cdef double f(double x):
    return x*x*x*x - 3 * x

def integrate_f (double a, double b, int N):
    cdef double s = 0
    cdef double dx = (b - a) / N
    cdef int i
    for i in range (N):
        s += f( a + i * dx )
    return s * dx

