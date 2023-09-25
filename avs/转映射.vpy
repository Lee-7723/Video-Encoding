import vapoursynth as vs
core = vs.get_core()
core.max_cache_size = 4000
src = core.lsmas.LWLibavSource(source=r"E:\2160p.120fps-mvtools.mp4")
src = core.resize.Lanczos(clip=src, format=vs.RGBS, width=None, height=None,matrix_in_s="2020ncl",transfer_in_s="std-b67", transfer_s="linear",nominal_luminance=1000)

src = core.tonemap.Hable(src, exposure=24, a=0.5, b=0.5, c=0.1, d=3, e=0.001, f=0.8, w=1.5)
#src = core.tonemap.Mobius(src, exposure=6, transition=0.2, peak=300)
#src = core.tonemap.Reinhard(src, exposure=2.5, contrast=0.6, peak=0.8)

src = core.resize.Lanczos(clip=src, format=vs.YUV420P10, matrix_s="709",primaries_in_s="2020",  primaries_s="709",transfer_in_s="linear", transfer_s="709")
src.set_output()