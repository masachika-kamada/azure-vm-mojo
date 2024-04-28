mojo build mojo_def.mojo
mojo build mojo_fn.mojo
time python3 ./python.py 13 6 0
time ./mojo_def 13 6 0
time ./mojo_fn 13 6 0
