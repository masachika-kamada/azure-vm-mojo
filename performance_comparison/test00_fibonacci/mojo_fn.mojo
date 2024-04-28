import sys


fn fibonacci(n: Int) -> Int:
    if n == 0 or n == 1:
        return n
    else:
        return fibonacci(n - 2) + fibonacci(n - 1)


fn main():
    try:
        print(fibonacci(atol(sys.argv()[1])))
    except:
        pass
