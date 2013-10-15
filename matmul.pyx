cimport numpy as np
cimport cython

@cython.boundscheck(False)
def matmul(np.ndarray[np.int64_t, ndim=2] A,
           np.ndarray[np.int64_t, ndim=2] B,
           np.ndarray[np.int64_t, ndim=2] out):
    cdef int i, j, k
    cdef np.int64_t s
    # Take each row of A
    for i in range(0 , A.shape [0]):
            # And multiply by every column of B
            for j in range(B.shape [1]):
                s = 0
                for k in range (A.shape [1]):
                   s += A [i , k ] * B [k , j ]
                out [i , j ] = s

