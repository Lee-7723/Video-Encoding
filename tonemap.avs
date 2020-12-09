SetMemoryMax(6000)
a=LWLibavVideoSource("E:\HDR-test\F2-HDR-ori\1.mkv")
b=LWLibavVideoSource("E:\HDR-test\F2-HDR-ori\2.mkv")
c=LWLibavVideoSource("E:\HDR-test\F2-HDR-ori\3.mkv")
d=LWLibavVideoSource("E:\HDR-test\F2-HDR-ori\4.mkv")
e=LWLibavVideoSource("E:\HDR-test\F2-HDR-ori\5.mkv")
#ConvertToRGB64(matrix="Rec601")
a+b+c+d+e
ConvertBits(10)

z_ConvertFormat(pixel_type="RGBPS",colorspace_op="2020ncl:st2084:2020:l=>rgb:linear:2020:l",nominal_luminance=100)
#DGReinhard(contrast=0.3, bright=5)
DGHable(exposure = 2.0,a = 0.15,b = 0.50, c = 0.10, d = 0.20, e = 0.02,  f = 0.30, w = 11.2)#Default
z_ConvertFormat(pixel_type="yv12",colorspace_op="rgb:linear:2020:l=>709:709:709",nominal_luminance=100)

#z_ConvertFormat( colorspace_op="2020ncl:st2084:2020:l=>709:709:709",nominal_luminance=100)
#z_ConvertFormat(pixel_type="YV12", colorspace_op="2020ncl:st2084:2020:l=>709:709:709",nominal_luminance=120)

#z_ConvertFormat( colorspace_op="709:709:709=>2020ncl:st2084:2020",nominal_luminance=300)

 Histogram("levels")
