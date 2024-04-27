fn repeat[count: Int](msg: String):
    for i in range(count):
        print(msg)


fn call_repeat():
    repeat[3]("Hello")
    # Prints "Hello" 3 times


fn main():
    call_repeat()

# 引数を2つ取るように記述しても同じ動作が可能だが
# [3]のようにすると、処理速度が向上するらしい
# fn repeat(count: Int, msg: String):
