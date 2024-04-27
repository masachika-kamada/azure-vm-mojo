struct MyPair:
    var first: Int
    var second: Int

    fn __init__(inout self, first: Int, second: Int):
        self.first = first
        self.second = second

    fn dump(self):
        print(self.first, self.second)


fn main():
    var mine = MyPair(2, 4)
    # var mine = MyPair(int(2.3), 4)
    mine.dump()
