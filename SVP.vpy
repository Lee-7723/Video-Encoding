import vapoursynth as vs
core = vs.get_core()
clip = core.lsmas.LWLibavSource(source=r"J:\temp\test.mkv")
clip = clip.resize.Bicubic(format=vs.YUV420P8) #convert to YV12
   
super  = core.svp1.Super(clip,"{gpu:1}")
vectors= core.svp1.Analyse(super["clip"],super["data"],clip,"{}")
smooth = core.svp2.SmoothFps(clip,super["clip"],super["data"],vectors["clip"],vectors["data"],"{}")
smooth = core.std.AssumeFPS(smooth,fpsnum=smooth.fps_num,fpsden=smooth.fps_den)
   
smooth.set_output()