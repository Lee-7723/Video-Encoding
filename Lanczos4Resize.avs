SetMemoryMax(6000)
LWLibavVideoSource("E:\00910.m2ts")
Lanczos4Resize(LWLibavVideoSource("E:\00910.m2ts"), 7680,4320, src_left=0.0, src_top=0.0, src_width=1920, src_height=1080)
nnedi3(field=-1, dh=false, Y=true, U=true, V=true, nsize=0, nns=1, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
