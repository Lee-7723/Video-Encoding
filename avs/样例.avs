potplayer_source()
SetMemoryMax(6000)
global threads=25
#SetMemoryMax和global threads不同电脑SVP生成的不同，可能需要修改（global threads和CPU线程无关）

SetFilterMTMode("DEFAULT_MT_MODE",2)
SetFilterMTMode("SVSuper",1)
SetFilterMTMode("SVAnalyse",1)
ConvertToYV12()

global crop_string  = ""
global resize_string = ""
global super_params     = "{scale:{up:0},gpu:1,rc:true}"
#gpu后数值对应“渲染设备”选项，CPU对应0，GPU对应1。但是SVP好像即使在把渲染设备改为显卡的情况下仍然占用更多的CPU资源，如果用GPU的话差不多是用20%的GPU占用换取CPU节省30%的占用这种比例（不同设备差异会很大），因此仍然不能很好的调用显卡
global analyse_params   = "{block:{overlap:0},main:{search:{coarse:{distance:-8,bad:{sad:2000,range:24}},type:2}}}"
global smoothfps_params = "{gpuid:11,rate:{num:3,den:1},algo:23,mask:{area:25,cover:80},scene:{blend:true,limits:{m1:0,m2:0}}}"
#目标帧率=视频帧率*num/den；algo对应“SVP着色器选项”，数值就是选项前的数值（参考文章附的图片）
#scene:{blend}对应“场景变换处理”选项，帧混合对应blend:true，帧重复则不需要写此项（如scene:{limits:{m1:0,m2:0}}。此功能相对Pr的光流法之类补帧好处是镜头切换处没有坏帧，检测灵敏度可以调节，请参考官网）
#scene中limits的位置可以用mode代替，对应“帧插补模式“选项，恒定帧间隔（最流畅）对应mode:0，  1m普通模式对应mode:1，  2m（伪影最少）对应mode:2，例如：  scene:{blend:true,mode:0}（“场景变换处理”为“帧混合”，“插补模式”为“最流畅”）。1.5m（少量伪影）对应limits:{m1:0,m2:0}。少伪影和流畅之间不能兼顾，官网上有limits的详细说明。个人偏向1.5m模式，也就是样例里写着的这个样子，但是相对流畅感不强。

#影响较大的设置基本就是这些，其他设置可以百度或者访问svp官网

global demo_mode=0
global stereo_type=0

#这代码就是用svp软件生成的
########## BEGIN OF base.avs ##########
# This file is a part of SmoothVideo Project (SVP) ver.4
# This is NOT the full AVS script, all used variables are defined via
# JScript code that generates the full script text.

function interpolate(clip src)
{
	input = crop_string=="" ? src : eval("src."+crop_string)
	input = resize_string=="" ? input : eval("input."+resize_string)

	#MT-MODE-1  #do not remove this line!

	super=SVSuper(input, super_params)
	vectors=SVAnalyse(super, analyse_params, src=input)
	smooth=SVSmoothFps(input, super, vectors, smoothfps_params, mt=threads, src=src)

	#MT-MODE-2  #do not remove this line!

	return demo_mode==0 ? smooth : demo(input,smooth)
}

input=last

	stereo_type==0 ? eval(""" interpolate(input)
""") : 	stereo_type==1 ? eval("""
		lf = interpolate(input.crop(0,0,input.width/2,0))
		rf = interpolate(input.crop(input.width/2,0,0,0))
		StackHorizontal(lf, rf)
""") : 	stereo_type==2 ? Eval("""
		lf = interpolate(input.crop(0,0,0,input.height/2))
		rf = interpolate(input.crop(0,input.height/2,0,0))
		StackVertical(lf, rf)""") : input

########### END OF base.avs ###########


Prefetch(threads)
#好啦，把这一串复制到potplayer->选项->视频->AviSynth 中，勾选使用AviSynth并在滤镜选项种将内置滤镜激活条件改为总是使用，播放，按tab键切出OSD信息，看帧数一栏括号里是否为高帧率，若为高帧率基本就是成功了。如果avs代码有误，会在视频左上角有报错信息
#By Lee-7723