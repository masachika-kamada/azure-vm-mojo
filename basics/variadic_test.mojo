fn sum(*values: Int) -> Int:
    var sum: Int = 0
    for value in values:
        sum = sum + value
    return sum


fn main():
    var result: Int = sum(1, 2, 3, 4, 5)
    print(result)
