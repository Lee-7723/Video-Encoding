LWLibavVideoSource("D:\byrbt\Once.Upon.a.Snowman.2020.DSNYP.1080p.WEBRip.X264.Atmos-EVO\Once.Upon.a.Snowman.2020.DSNYP.1080p.WEBRip.X264.Atmos-EVO (Lee-7723搬).mkv")

Crop(0,140,0,800)
Trim(4455, 4923 )
#nnedi3_rpow2(rfactor=2, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
#aWarpSharp2(thresh=225, blur=2, type=0, depth=20, chroma=3)
AddGrain(var=16)