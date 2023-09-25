loadplugin("C:\Program Files (x86)\AviSynth+\plugins64\LSMASHSource.dll")

loadplugin("C:\Program Files (x86)\AviSynth+\plugins64\DGTonemap.dll")

loadplugin("C:\Program Files (x86)\AviSynth+\plugins64\avsresize.dll")

LWLibavVideoSource("I:\Zootopia.2016.2160p.UHD.BluRay.x265-TERMiNAL.mkv", format="YUV420P8")

ConvertBits(10)

z_ConvertFormat(pixel_type="RGBPS",colorspace_op="2020ncl:st2084:2020:l=>rgb:linear:2020:l", dither_type="none")

DGReinhard(0.3, 10.0)

z_ConvertFormat(pixel_type="YV12",colorspace_op="rgb:linear:2020:l=>709:709:709:l",dither_type="ordered")

