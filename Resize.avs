SetMemoryMax(6000)
clip=LWLibavVideoSource("E:\Electric Odyssey sub-proj\[Extreme E] Electric Odyssey S01E03 _ The Desert X Prix Winners! _ Extreme E-5qkfLU4vn00.mkv", format="YUV420P8")
#DuplicateFrame(1)
#trim(1,18196)

##Resize:
#clip=eedi3_rpow2(clip, rfactor=4)#·Ç³£Âý
#clip=JincResize(clip, 2560,1440,tap=8)#Ã÷ÏÔartifact
#clip=nnedi3_rpow2(clip, rfactor=4, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
#clip=Lanczos4Resize(clip, 2560,1440, src_left=0.0, src_top=0.0)

##Sharpen:
#clip=aWarpSharp2(clip, thresh=255, blur=2, type=0, depth=20, chroma=3)
#clip=vsMSharpen(clip, threshold=10,strength=60,chroma=true)
#clip=aSharp(clip, T=4.0, D=4.0, B=-1.0, hqbf=false)#for 4k
clip=aSharp(clip, T=0.6, D=4.0, B=-1.0, hqbf=false)#for 1080P

clip=TextSub(clip, file="E:\Electric Odyssey sub-proj\[Extreme E] Electric Odyssey S01E03 _ The Desert X Prix Winners! _ Extreme E-5qkfLU4vn00.ass",  fps=clip.FrameRate())
clip