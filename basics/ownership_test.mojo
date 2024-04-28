fn sum_borrowed(borrowed n: Int, borrowed m: Int) -> Int:
	# n += 1  # error
	return n + m


fn sum_inout(inout n: Int, inout m: Int) -> Int:
	n += 1
	return n + m


fn sum_owned(owned n: Int, owned m: Int) -> Int:
	n += 1
	return n + m


fn main():
    var a = 1
    var b = 2
    # var total = sum_borrowed(a, b)
    # var total = sum_inout(a, b)
    var total = sum_owned(a, b)
    print(a)
    print(b)
    print(total)

# borrowed: 不変の引数（関数内で仮引数の変更不可）
# inout: 可変の引数（参照渡しのため、関数外にも影響）
# owned: 可変の引数（値渡しのため、関数外には影響しない）
