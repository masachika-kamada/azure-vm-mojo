from python import Python


fn button_clicked():
    print("Hi from a Mojo🔥 fn!")


def main():
    Python.add_to_path(".")
    var app = Python.import_module("myapp").App()
    app.create("800x600")

    while True:
        app.update()
        if app.clicked:
            button_clicked()
            app.clicked = False

# pip install pytk
# sudo apt install python3-tk
# SSH接続のためウィンドウ表示ができない
