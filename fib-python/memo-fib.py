# PYTHON
from functools import lru_cache

@lru_cache(maxsize=10000)
def fib(n):
    if n == 1:
        return 1
    elif n == 2:
        return 1
    else:
        return fib(n-1) + fib(n-2)

for n in range(1,1000001):
    fib(n)
