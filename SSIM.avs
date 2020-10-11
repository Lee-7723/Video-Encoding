SetMemoryMax(6000)

SSIM(LWLibavVideoSource("E:\SSIM_test\clips\00910.m2ts", format="YUV420P8"), LWLibavVideoSource("E:\SSIM_test\clips\low-x264-slower-ssim.mkv", format="YUV420P8"), "E:\SSIM_test\low-x264-slower-ssim.csv", "globalSSIM.txt" , lumimask=1, scaled=1)
