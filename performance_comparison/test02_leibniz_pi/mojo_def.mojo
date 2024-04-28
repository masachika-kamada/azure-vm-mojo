fn calculate_pi_leibniz():
    var limit = 10 ** 9
    var n = 1
    var l = 0.0
    while n < limit:
        l += (1.0 / n) - (1.0 / (n + 2))
        n += 4
    print("Leibniz: ", l * 4)


fn main():
    calculate_pi_leibniz()
