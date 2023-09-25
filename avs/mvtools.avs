LWLibavVideoSource("D:\temp\ori.mkv", format="YUV420P8")#AVISource("C:\Users\19816\Documents\Video Encoding\readfile.avs", audio=false) # or MPEG2Source, DirectShowSource, some previous filter, etc
super = MSuper(pel=2)
backward_vec = MAnalyse(super, overlap=4, isb = true, search=3)
# Use block overlap, halfpixel accuracy and Exhaustive search
forward_vec = MAnalyse(super, overlap=4, isb = false, search=3)
MFlowFps(super, backward_vec, forward_vec, num=3*FramerateNumerator(last), \
   den=FramerateDenominator(last))