LoadPlugin("C:\Program Files (x86)\AviSynth+\plugins64\DirectShowSource.dll")
loadplugin("C:\Program Files (x86)\AviSynth+\plugins64\DGTonemap.dll")

loadplugin("C:\Program Files (x86)\AviSynth+\plugins64\avsresize.dll")
DirectShowSource("C:\Users\李竞择\Desktop\Frozen II 2019 BluRay HDR 2160p Atmos TrueHD7 1 x265 10bit- Lee-7723.grf")

ConvertToYV12()
ConvertBits(8)
# ffmpeg -f dshow -i video="F:\1.grf" f:\out.mp4