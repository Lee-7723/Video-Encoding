SetMemoryMax(6000)

SSIM(LWLibavVideoSource("E:\SSIM_test\clips\00910.m2ts", format="YUV420P8"), LWLibavVideoSource("E:\SSIM_test\clips\prores.mkv", format="YUV420P8"), "E:\SSIM_test\prores.csv", "globalSSIM.txt" , lumimask=1, scaled=1)
