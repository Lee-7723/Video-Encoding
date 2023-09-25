LoadPlugin("C:\Program Files\DAUM\PotPlayer\PotPlayer64.dll")potplayer_source()
ConvertToYV12()
global Threads=8
global super_params="{scale:{up:0},gpu:1,rc:true}"
global analyse_params="{main:{search:{coarse:{distance:-8,bad:{sad:2000,range:24}},type:2}},refine:[{thsad:250}]}"
global smoothfps_params="{rate:{num:48000,den:1001,abs:true},algo:13,scene:{}}"
super=SVSuper(last, super_params)
vectors=SVAnalyse(super, analyse_params, src=last)
SVSmoothFps(last, super, vectors, smoothfps_params, mt=Threads, src=last)
Prefetch(Threads)