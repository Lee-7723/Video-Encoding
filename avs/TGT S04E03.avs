SetMemoryMax(6000)
#SetFilterMTMode("aSharp", 2)
#SetFilterMTMode("LWLibavVideoSource", 2)
#SetFilterMTMode("TextSub", 2)

clip=LWLibavVideoSource("D:\The.Grand.Tour.S04E03.HDR.2160p.WEB.H265-WHOSNEXT[rartv]\The.Grand.Tour.S04E03.HDR.2160p.WEB.H265-WHOSNEXT.mkv", format="YUV420P8")
#DuplicateFrame(1)
##Resize:
#clip=eedi3_rpow2(clip, rfactor=4)#�ǳ���
#clip=JincResize(clip, 2560,1440,tap=8)#����artifact
#clip=nnedi3_rpow2(clip, rfactor=4, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
#clip=Lanczos4Resize(clip, 2560,1440, src_left=0.0, src_top=0.0)

##Sharpen:
#clip=aWarpSharp2(clip, thresh=255, blur=2, type=0, depth=20, chroma=3)
#clip=vsMSharpen(clip, threshold=10,strength=60,chroma=true)
clip=aSharp(clip, T=4.0, D=4.0, B=-1.0, hqbf=false)#for 4k
#clip=aSharp(clip, T=1.6, D=4.0, B=-1.0, hqbf=false)#for 1080P

clip=TextSub(clip, file="D:\The.Grand.Tour.S04E03.1080p.WEB.H264-WHOSNEXT\ch.ass",  fps=clip.FrameRate())
clip=TextSub(clip, file="D:\The.Grand.Tour.S04E03.1080p.WEB.H264-WHOSNEXT\en.ass",  fps=clip.FrameRate())
clip

Prefetch(clip,4)