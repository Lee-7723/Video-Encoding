SetMemoryMax(6000)
#SetFilterMTMode("aSharp", 2)
#SetFilterMTMode("LWLibavVideoSource", 2)
#SetFilterMTMode("TextSub", 2)

clip=LWLibavVideoSource("E:\[GreatMoonAroma] Squid game MrBeast in VRchat! ¡¾ VRchat ¡¿-M0Q1y1NKzdA.mkv", format="YUV420P8")
#DuplicateFrame(1)

##Resize:
#clip=eedi3_rpow2(clip, rfactor=4)#·Ç³£Âý
#clip=JincResize(clip, 2560,1440,tap=8)#Ã÷ÏÔartifact
#clip=nnedi3_rpow2(clip, rfactor=4, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
#clip=Lanczos4Resize(clip, 2560,1440, src_left=0.0, src_top=0.0)

##Sharpen:
#clip=aWarpSharp2(clip, thresh=255, blur=2, type=0, depth=20, chroma=3)
#clip=vsMSharpen(clip, threshold=10,strength=60,chroma=true)
#clip=aSharp(clip, T=4.0, D=4.0, B=-1.0, hqbf=false)#for 4k
#clip=aSharp(clip, T=0.2, D=4.0, B=-1.0, hqbf=false)#for 1080P
clip=edgelevel(clip,strength=8, threshold=0)

clip=TextSub(clip, file="E:\[GreatMoonAroma] Squid game MrBeast in VRchat! ¡¾ VRchat ¡¿-M0Q1y1NKzdA.ass", fps=clip.FrameRate())
clip

Prefetch(clip,8)