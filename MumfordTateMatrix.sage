##########################################################################
# This package contains code used to compute maps N_1*phi_1+N_2*phi_2+...+N_n*phi_n on characters associated to Jacobians J_m of hyperelliptic curves of the form
# C_m: y^2=x^m-1, where m is any odd positive integer.
# The Jacobian decomposes into absolutely simple factors, some of which are Jacobians of lower genus curves y^2=x^p-1 where p is a prime dividing m.
# We use information about the kernels of the maps to determine if the Mumford-Tate group of J_m is degenerate.
#
# The map N_1*phi_1+N_2*phi_2+...+N_n*phi_n is represented by a matrix M, which is formed by concatenating the matrices associated to the simple factor of J_m
#
# The algorithms are based on [1] Goodson, H., "An Exploration of Degeneracy in Abelian Varieties of Fermat Type" arXiv 2022 (or the most recent citation once it is published)
#
# When using this code in your research, please cite as:
# "the software of [1], which is based on the theoretical work of [1]"
# where [1] is as above.
#
# This package contains the following functions:
# For the family y^2 = x^m-1, m odd:
#    - Matrix
#    - MT_matrix_p2
#    - MT_matrix_p3
#    - degreekernel2
#    - degreekernel3
#
# #TODO
#    - automate matrix for more general m
#

##########################################################################
#
# Some utilities we will need
#

def M_entry(a,i,m):
    CM_list=m.coprime_integers((m+1)/2) #CM type
    if Mod(i*a^(-1),m) in CM_list:
        return 1
    else: return 0


##########################################################################
#
# Functions for y^2 = x^m-1
#

def Matrix(m):
    """
    Computes the matrix M for an abs simple abelian variety
    Currently works for:
        1) m = prime power
        2) any m, but only outputs matrix for the the abs abelian variety X that is the factor of J_m with the saame CM type

    INPUT:
    - ``m`` -- an integer. The degree in C_m: y^2=x^m-1

    OUTPUT:
    - n by n matrix M, where n is phi(m)/2

    """
    full_list=m.coprime_integers(m)
    M=matrix(ZZ, len(full_list),len(full_list), lambda k,n: M_entry(full_list[k],full_list[n],m)) #compute M_entry for row k, column n entry
    return M


def MT_matrix_p2(p):
    """
    Computes the matrix M for J_{p^2}

    INPUT:
    - ``p`` -- a prime number.

    OUTPUT:
    - k by n matrix M, where k is  phi(p^2)/2 and n is phi(p^2)/2 + phi(p)/2

    """
    Mp=Matrix(p)
    Mstack=Mp
    Mp2=Matrix(p^2)
    for j in [1..p-1]:
        Mstack=Mstack.stack(Mp)
    return Mp2.augment(Mstack)


def MT_matrix_p3(p):
    """
    Computes the matrix M for J_{p^3}

    INPUT:
    - ``p`` -- a prime number.

    OUTPUT:
    - k by n matrix M, where k is  phi(p^3)/2 and n is phi(p^3)/2 + phi(p^2)/2 + phi(p)/2

    """
    M3=Matrix(p^3)
    M2=MT_matrix_p2(p)
    Mstack=M2
    for i in [1..p-1]:
        Mstack=Mstack.stack(M2)
    M=M3.augment(Mstack)
    return M

"""
These functions gives the index of the kernel in ZZ^(dim)

    INPUT:
    - ``p`` -- a prime number.

    OUTPUT:
    - 1 if the Mumford-Tate projection is an isomorphism
    - integer n>1 if the projection is an isogeny
    - 'infinity' if the projection is not an isogeny
"""

def degreekernel2(p): #corresponds to m=p^2
    dim=p-1
    Module=ZZ^(dim)
    Mp=MT_matrix_p2(p)
    Mker=Mp.right_kernel()
    KER=[]
    for b in Mker.basis():
        row=b[-(p-1):]
        KER.append(row)
    W=Module.submodule(KER)
    return W.index_in(Module)

def degreekernel3(p): #corresponds to m=p^3
    dim=euler_phi(p^2)+euler_phi(p)
    Module=ZZ^(dim)
    Mp=MT_matrix_p3(p)
    Mker=Mp.right_kernel()
    KER=[]
    for b in Mker.basis():
        row=b[-(dim):]
        KER.append(row)
    W=Module.submodule(KER)
    return W.index_in(Module)




