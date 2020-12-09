SetMemoryMax(6000)
a=LWLibavVideoSource("E:\SSIM_test\clips\00910.m2ts", format="YUV420P8")
b=LWLibavVideoSource("E:\SSIM_test\clips\low-x264-ultrafast.mkv", format="YUV420P8")
#b=aSharp(b,T=2.0, D=4.0, B=-1.0, hqbf=false)
#SSIM(a, b, "E:\SSIM_test\prores.csv", "globalSSIM.txt" , lumimask=1, scaled=1)
VMAF(a,b, model=0, log_path="E:\SSIM_test\vmaf\low-x264-ultrafast-sharpen.csv",log_fmt=2, ssim=false, ms_ssim=false, pool=1, ci=false)
 