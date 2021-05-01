SetMemoryMax(6000)
LWLibavVideoSource("D:\迅雷下载\Zootopia.2016.2160p.UHD.BluRay.x265-TERMiNAL.mkv")
Trim(4579, 11775)
#ConvertToRGB64(matrix="Rec601")
ConvertBits(10)


#z_ConvertFormat(pixel_type="RGBPS",colorspace_op="2020ncl:st2084:2020:l=>rgb:linear:2020:l",nominal_luminance=100)
#DGReinhard(contrast=0.1, bright=2)
#DGHable(exposure = 2.0,a = 0.15,b = 0.50, c = 0.10, d = 0.20, e = 0.02,  f = 0.30, w = 11.2)#Default
#DGHable(exposure = 2.4,a = 0.15,b = 0.50, c = 0.08, d = 0.24, e = 0.024,  f = 0.30, w = 11.2)#Default
#DGHDRtoSDR(white=400, black=0, gamma=0.42, hue=0.0, r=1.0, g=1.0, b=1.15, tm=0.9, roll=0.7, fulldepth=false, impl=255, mode="pq")#Default

ConvertBits(16)
DGHDRtoSDR(white=100, black=100, gamma=0.52, hue=0.0, r=1.0, g=1.0, b=1.15, tm=0.8, roll=0.7, fulldepth=false, impl="255", mode="pq")#Default

#z_ConvertFormat(pixel_type="yv12",colorspace_op="rgb:linear:2020:l=>709:709:709",nominal_luminance=100)

#z_ConvertFormat( colorspace_op="2020ncl:st2084:2020:l=>709:709:709",nominal_luminance=100)
#z_ConvertFormat(pixel_type="YV12", colorspace_op="2020ncl:st2084:2020:l=>709:709:709",nominal_luminance=120)

#z_ConvertFormat( colorspace_op="709:709:709=>2020ncl:st2084:2020",nominal_luminance=300)
 #Histogram("levels")
