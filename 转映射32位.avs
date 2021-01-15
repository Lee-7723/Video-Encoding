LoadPlugin("C:\Program Files (x86)\AviSynth+\plugins\LSMASHSource.dll")
loadplugin("C:\Program Files (x86)\AviSynth+\plugins\DGTonemap.dll")
loadplugin("C:\Program Files (x86)\AviSynth+\plugins\avsresize.dll")
LWLibavVideoSource("F:\Frozen Series\Frozen2test.mkv", format="YUV420P8")
ConvertBits(10)
z_ConvertFormat(pixel_type="RGBPS",colorspace_op="2020ncl:st2084:2020:l=>rgb:linear:2020:l", dither_type="none")
DGReinhard(0.3, 10.0)
z_ConvertFormat(pixel_type="YV12",colorspace_op="rgb:linear:2020:l=>709:709:709:l",dither_type="ordered")
SetMemoryMax(4000)
ConvertToYV12()
global threads=12

#LoadPlugin("C:\Program Files (x86)\AviSynth+\plugins\svpflow1.dll")
#LoadPlugin("C:\Program Files (x86)\AviSynth+\plugins\svpflow2.dll")
#global super_params="{scale:{up:0},gpu:1,rc:true}"
#global analyse_params="{main:{search:{coarse:{distance:-8},type:2}}}"
#global smoothfps_params="{rate:{num:60000,den:1001,abs:true},algo:13,scene:{}}"
#super=SVSuper(last, super_params)
#vectors=SVAnalyse(super, analyse_params, src=last)
#SVSmoothFps(last, super, vectors, smoothfps_params, mt=Threads, src=last)
Prefetch(Threads)