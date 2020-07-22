import vapoursynth as vs
core = vs.get_core()
clip = core.lsmas.LWLibavSource(source=r"I:\Frozen.2013.2160p.UHD.BluRay.TrueHD.7.1.Atmos.HDR.x265-BlzT.mkv")
clip = core.resize.Lanczos(clip=clip, format=vs.RGBS, width=None, height=None,matrix_in_s="2020ncl",transfer_in_s="std-b67", transfer_s="linear",nominal_luminance=1000)

clip = core.tonemap.Hable(clip, exposure=24, a=0.5, b=0.5, c=0.1, d=3, e=0.001, f=0.8, w=1.5)
#src = core.tonemap.Mobius(src, exposure=6, transition=0.2, peak=300)
#src = core.tonemap.Reinhard(src, exposure=2.5, contrast=0.6, peak=0.8)

clip = core.resize.Lanczos(clip=clip, format=vs.YUV420P10, matrix_s="709",primaries_in_s="2020",  primaries_s="709",transfer_in_s="linear", transfer_s="709")
clip = clip.resize.Bicubic(format=vs.YUV420P8) #convert to YV12
   
super_params="{scale:{up:0},gpu:1,rc:true}"

analyse_params="{block:{w:8,overlap:0},main:{search:{coarse:{distance:-12,bad:{sad:2000}},type:2}}, refine:[{thsad:1000}]}"

smoothfps_params="{gpuid:11,rate:{num:3,den:1},algo:2,mask:{area:25,cover:80},scene:{blend:true,limits:{m1:0,m2:0}}}" #帧率的比例num/den=分子/分母

super=core.svp1.Super(clip,super_params)
vectors=core.svp1.Analyse(super["clip"],super["data"],clip,analyse_params)

smooth=core.svp2.SmoothFps(clip,super["clip"],super["data"],vectors["clip"],vectors["data"],smoothfps_params)

smooth=core.std.AssumeFPS(smooth,fpsnum=smooth.fps_num,fpsden=smooth.fps_den)

smooth.set_output()