Import("D:\Program Files\AviSynth+\scripts\InpaintFunc.avs")
LWLibavVideoSource(source="D:\Ñ¸À×ÏÂÔØ\logo.m4s", stream_index=-1, threads=0, cache=True, seek_mode=0, seek_threshold=10, dr=False, repeat=False, dominance=0, stacked=False, format="YUV420P8")
InpaintFunc(last, mask="C:\Users\19816\Pictures\logoarea.bmp", loc="br", AR=4.0/3.0, mode="both", speed=10, ppmode=3, pp=75)