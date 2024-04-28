import sys


var call_cnt = 0


fn tarai(x: Int, y: Int, z: Int) -> Int:
    call_cnt += 1
    if x <= y:
        return y
    else:
        return tarai(tarai(x - 1, y, z), tarai(y - 1, z, x), tarai(z - 1, x, y))


fn main() raises:
    var arg = sys.argv()
    if len(arg) >= 4:
        var x = atol(arg[1])
        var y = atol(arg[2])
        var z = atol(arg[3])

        var res = tarai(x, y ,z)
        print(call_cnt)
