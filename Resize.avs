SetMemoryMax(6000)
LWLibavVideoSource("E:\[GreatMoonAroma] I make amazing VR art gallery in VRchat!!! -NIsypLFrQfg.mkv", format="YUV420P8")
DuplicateFrame(1)
#trim(1,18196)

##Resize:
#eedi3_rpow2(clip, rfactor=4)#·Ç³£Âý
#JincResize(2560,1440,tap=8)#Ã÷ÏÔartifact
#nnedi3_rpow2(rfactor=2, nsize=0, nns=3, qual=1, etype=0, pscrn=2, threads=0, opt=0, fapprox=15)
#Lanczos4Resize(2560,1440, src_left=0.0, src_top=0.0)

##Sharpen:
#aWarpSharp2(thresh=128, blur=2, type=0, depth=20, chroma=3)
#vsMSharpen(threshold=10,strength=60,chroma=true)
#aSharp(T=2.0, D=4.0, B=-1.0, hqbf=false)#for 4k
aSharp(T=0.6, D=4.0, B=-1.0, hqbf=false)#for 1080P

TextSub(file="E:\[GreatMoonAroma] I make amazing VR art gallery in VRchat!!!  .ass",  fps=60)