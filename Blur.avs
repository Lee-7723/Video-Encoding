SetMemoryMax(6000)
#SetFilterMTMode("aSharp", 2)
#SetFilterMTMode("LWLibavVideoSource", 2)
#SetFilterMTMode("TextSub", 2)

clip=LWLibavVideoSource("D:\temp\[Drumsy] Exposing Our Secret Photos #2-HaOmKMIZ4jQ.mkv", format="YUV420P8")
#DuplicateFrame(1)
a=trim(clip,0,9048)
bb=trim(clip,9049,9267)
c=trim(clip,9268,20509)
dd1=trim(clip,20510,20579)
dd2=trim(clip,20580,20662)
dd3=trim(clip,20663,20984)
e=trim(clip,20985,clip.FrameCount())

b=GaussianBlur(bb,varY=300,varC=300,U=3,V=3)
b=Crop(b,700,434,1190-700,920-434)
b=Overlay(bb,b, 700,435, opacity=1.0, mode="blend", greymask=true, ignore_conditional=false, pc_range=false)

d1=GaussianBlur(dd1,varY=200,varC=200,U=3,V=3)
d2=GaussianBlur(dd2,varY=600,varC=600,U=3,V=3)
d3=GaussianBlur(dd3,varY=200,varC=200,U=3,V=3)
d=d1+d2+d3

clip=a+b+c+d+e
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

clip=TextSub(clip, file="D:\temp\[Drumsy] Exposing Our Secret Photos #2-HaOmKMIZ4jQ.ass",  fps=clip.FrameRate())
clip

Prefetch(clip,4)