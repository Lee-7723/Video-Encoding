SetMemoryMax(6000)

src=LWLibavVideoSource("D:\byrbt\Once.Upon.a.Snowman.2020.DSNYP.1080p.WEBRip.X264.Atmos-EVO\Once.Upon.a.Snowman.2020.DSNYP.1080p.WEBRip.X264.Atmos-EVO (Lee-7723°á).mkv")
clip=Crop(src,0,140,0,800)
#Lanczos4Resize(clip, 7680,4320, src_left=0.0, src_top=0.0, src_width=1920, src_height=1080)
#eedi3_rpow2(clip, rfactor=4)
up=nnedi3_rpow2(clip,rfactor=2, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
aWarpSharp2(up, thresh=240, blur=2, type=0, depth=20, chroma=3)
up=nnedi3_rpow2(rfactor=2, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
aWarpSharp2(up, thresh=225, blur=2, type=0, depth=20, chroma=3)
#JincResize(clip, 7840,4320,tap=8)#Ã÷ÏÔartifact