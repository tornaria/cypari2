from .types cimport *
cimport cython

from .gen cimport Gen

cpdef long default_bitprec() noexcept

cdef extern from *:
    """
    #define DEFAULT_BITPREC prec2nbits(DEFAULTPREC)
    """
    long DEFAULT_BITPREC

cdef class Pari_auto:
    pass

cdef class Pari(Pari_auto):
    cdef readonly Gen PARI_ZERO, PARI_ONE, PARI_TWO
    cpdef Gen zero(self)
    cpdef Gen one(self)
    cdef Gen _empty_vector(self, long n)

cdef long get_var(v) except -2
