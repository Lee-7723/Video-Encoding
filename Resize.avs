SetMemoryMax(6000)

LWLibavVideoSource("C:\Users\19816\Pictures\out.png")

##Resize:
#Lanczos4Resize(clip, 7680,4320, src_left=0.0, src_top=0.0, src_width=1920, src_height=1080)
#eedi3_rpow2(clip, rfactor=4)#·Ç³£Âý
#JincResize(clip, 7840,4320,tap=8)#Ã÷ÏÔartifact
nnedi3_rpow2(rfactor=4, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)

##Sharpen:
#aWarpSharp2(thresh=200, blur=2, type=0, depth=20, chroma=3)
#vsMSharpen(threshold=10,strength=60,chroma=true)
