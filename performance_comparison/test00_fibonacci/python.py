import sys


def fibonacci(n):
    if n == 0 or n == 1:
        return n
    else:
        return fibonacci(n - 2) + fibonacci(n - 1)


def main():
    print(fibonacci(int(sys.argv[1])))


if __name__ == "__main__":
    main()
