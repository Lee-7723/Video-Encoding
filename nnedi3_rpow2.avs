SetMemoryMax(6000)

#Lanczos4Resize(LWLibavVideoSource("E:\00910.m2ts"), 7680,4320, src_left=0.0, src_top=0.0, src_width=1920, src_height=1080)
nnedi3_rpow2(LWLibavVideoSource("E:\00910.m2ts"),rfactor=2, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
