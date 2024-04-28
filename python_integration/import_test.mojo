from python import Python


fn main() raises:
    Python.add_to_path(".")
    var mypython = Python.import_module("mypython")

    var values = mypython.gen_random_values(2, 3)
    print(values)

# pythonで記述した関数を相対パスでimportして使える
