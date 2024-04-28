import sys


call_cnt = 0


def tarai(x, y, z):
    global call_cnt
    call_cnt += 1
    if x <= y:
        return y
    else:
        return tarai(tarai(x - 1, y, z), tarai(y - 1, z, x), tarai(z - 1, x, y))


def main():
    arg = sys.argv
    if len(arg) >= 4:
        x = int(arg[1])
        y = int(arg[2])
        z = int(arg[3])

        res = tarai(x, y ,z)
        print(call_cnt)


if __name__ == "__main__":
    main()
