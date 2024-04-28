import sys


var call_cnt = 0


def tarai(x: Int, y: Int, z: Int) -> Int:
    call_cnt += 1
    if x <= y:
        return y
    else:
        return tarai(tarai(x - 1, y, z), tarai(y - 1, z, x), tarai(z - 1, x, y))


def main():
    arg = sys.argv()
    if len(arg) >= 4:
        x = atol(arg[1])
        y = atol(arg[2])
        z = atol(arg[3])

        res = tarai(x, y ,z)
        print(call_cnt)
