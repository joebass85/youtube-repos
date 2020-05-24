# Python #
from functools import lru_cache
import concurrent.futures

#i = 0

num_list = []
for n in range(1,100001):
	num_list.append(n)

@lru_cache(maxsize=10000)
def fib(n):
	if n == 1:
		return 1
	if n == 2:
		return 1
	elif n > 2:
		return fib(n-1) + fib(n-2)


with concurrent.futures.ProcessPoolExecutor() as executor:
	results = executor.map(fib,num_list)
#	for result in results:
#		print(str(num_list[i]) + ":", result)
#		i += 1
