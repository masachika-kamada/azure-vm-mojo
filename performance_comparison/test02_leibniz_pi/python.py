def calculate_pi_leibniz():
    limit = 10 ** 9
    n = 1
    l = 0.0
    while n < limit:
        l += (1.0 / n) - (1.0 / (n + 2))
        n += 4
    print("Leibniz: ", l * 4)


if __name__ == "__main__":
    calculate_pi_leibniz()
