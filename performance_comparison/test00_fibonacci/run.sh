mojo build mojo_def.mojo
mojo build mojo_fn.mojo
time python3 ./python.py 30
time ./mojo_def 30
time ./mojo_fn 30
