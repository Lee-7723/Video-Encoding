SetMemoryMax(6000)

SSIM(LWLibavVideoSource("E:\00910.m2ts", format="YUV420P8"), LWLibavVideoSource("E:\low-x264-ultrafast.mkv", format="YUV420P8"), "E:\low-x264-ultrafast.csv", "globalSSIM.txt" , lumimask=1, scaled=1)
