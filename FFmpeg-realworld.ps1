
ffmpeg -hwaccel dxva2 -i "E:\[GreatMoonAroma] GREATMOONAROMA WHO ( VRchat )-hd7NCNhnqME.webm" -vf crop=x=730:y=852:w=in_w-730*2:h=100,scdet=t=20 -f null -

ffmpeg -hwaccel dxva2 -i "D:\OneDrive - lijingze\文档\Video Encoding\Subtitle.avs" -hwaccel auto -i "E:\[GreatMoonAroma] This cute anime girl can make cool avatars - VRchat Epic avatars #13-6SHrrUzqoFg.webm" -map 0 -map 1:a -c:a aac -sn -ab 529k -c:v h264_qsv -preset veryslow -look_ahead 1 -look_ahead_depth 60 -look_ahead_downsampling 3 -vb 10M GMA.mkv

ffmpeg -hwaccel dxva2 -i "E:\[VR Lolathon] Five Nights at Freddy's - Security Breach but its VRCHAT-fmVT495RLpc.webm" -lavfi "
[0:v]trim=0:818 ,setpts=PTS-STARTPTS[a],
[0:a]atrim=0:818 ,asetpts=PTS-STARTPTS[aa];
[0:v]trim=start=839.931 ,setpts=PTS-STARTPTS[c],
[0:a]atrim=start=839.931 ,asetpts=PTS-STARTPTS[ca];
[a][aa][c][ca]concat=n=2:v=1:a=1[outv][outa]
" -map [outv] -map [outa] -c:a aac -ab 529k -c:v h264_qsv -preset veryslow -look_ahead 1 -look_ahead_depth 60 -look_ahead_downsampling 3 -vb 8M blur.mkv





#在线播放

#芒果TV
mpv --http-header-fields='Referer: https://www.mgtv.com/' 'https://pcvideoaliyun.titan.mgtv.com/c1/2021/05/11_0/96245FF825BC7C5C42308184CC3983B6_20210511_1_1_1138_mp4/3477CED4B075A2A53D6C6E8F2EF11A19.m3u8?arange=0&pm=0~Wbixj5DSLVGSgVKSCVdAh2zTgYLYq95KNzqcLPFVOuWf9QgF9wZ9ytbM3D20lhjovURtJR1RAejAexH_soCjouIx3zO82dIUt6Qg1728l7YIRGUvFOIP1T7C_mCYAXmHjPqI6oENZle3grYbZ1ZDVRtL8vuDQ685Dmc8dHO6b4a80ESJwRyy8ZynRXvxk4EeOM9CbbruNbKnD~tC9lbJaTFn8vqUGiUJHehAmWIOSIUvoAXBuX06APoX1zm8DQD8N8CvL_tbde5cVffcowMjKM3XTTsyiQ7gv8ZNdS~xcV4BhVMINPffzy0UbPO5AsAj0q3FjLs9aLBD~FxiYnZb8Hy~LPK5hSPioVRHvYcPOReaRySmm3Xa_C5kY5pUOwNYQRs7IZdJFUSXNleXFhSEJlM9zTt~j~YPUvgxAf5YzVMHyVskBfeAvcw195ivjJ~dJ2Fac7E3rPvkMKFEFC598Wi2Eul5eaATpQ2lAY~pHYja94&mr=QbJFa6KSSBB16a~4TlXA0Q7SZCRfWotqm_MljzRP9TTmpkWE2uk4wWAIbmMZbus3GiQU1WiyYElSP1Zr4AT8WyH3Btz6t4ity_JXd4M3vMsxrHWfgvsNFAIvceATsdf1LcR8dinAgZqKhwxUJWkCPJbvmjeOePVGsj6gFCU19g8dP1EQrr6p8YYNsFW~KSsJdCF1R~ecV7bAeDaUKaUKQjrjyNldmstHp1Yt_frQotktGdoSrifP8nmai~7X8Od0QI6G34~VjaMsLE8PC4301iIIBKi5q5fAW_PEL8UQIeN9RwG3i1Ba0eoqrnJM2fpZsOpJEbbJ~AUcSVESgu8JYmmgGJ2riVqpZrxaIzVYMfN6uNGYGAgJKre6a3ahpP~Gy6z_RkBrF0PlAXK07D3s7ni8yILDNH8JqW5I979HylGqzMXydk3IOoDzVHjxuTdRKNIUYtFZVnF2YZ1x8WH~pPeI2pVibgXRBiWPXFo6oveg1~LNbS2UXM2MydWMhfDJ6hUBiN9Bj_o~aAWZLahiZnQABXv_86bCK0c3rcdt_KE5nDm9iT1P07NTuLKX~c3ARuaVFOAI7toMtDOBVzoEInOgtfUotPO7tYAMrjSKfb6nthvHN39XhcxxBS55Jb_Fvc1hc7g~2Hvoye0aL0OaYA4vjqWHGZKqfHZHhbbVf8szz47fZrqBskK_EAVxwFFhyWrveDkxrkcuNBdcNZv~cqJf1Zreaml8w1HCvqtx_LUNi30lgEKbWRbV5bI3Rhrc1z7B0bqJ~8QUNkrnkXTnANUuY3_pmUvCiEoRYW1zFCA-&vcdn=0&scid=25021&cpno=6i06rp&ruid=414c7205b8f34842'


阿里云盘：
mpv --http-header-fields='referer:https://www.aliyundrive.com/','user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.39' "https://bj29.cn-beijing.data.alicloudccp.com/JpjI4932%2F1611016%2F6172105901db4974a3f9488c885af931ae6ff195%2F61721059906d588e8ff64141b794880b5459e7c3?di=bj29&dr=845445&f=617577bf98427e2d3545434f831325a43e23edc2&response-content-disposition=attachment%3B%20filename%2A%3DUTF-8%27%27Dune.2021.1080p.HMAX.WEB-DL.DDP5.1.Atmos.H.264-FLUX.mkv&u=d211ced31ff2499cb8d7910249c1c193&x-oss-access-key-id=LTAIsE5mAn2F493Q&x-oss-additional-headers=referer&x-oss-expires=1635423857&x-oss-signature=V0Y8w4wtxtTKvU9oS9wDOVKUhvjup8fbfd6D679%2Fq%2Fs%3D&x-oss-signature-version=OSS2"

B站：
mpv --http-header-fields='referer:https://www.bilibili.com/','user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.39' "https://cn-tj2-cmcc-bcache-02.bilivideo.com/upgcxcode/26/61/322046126/322046126-1-74.flv?e=ig8euxZM2rNcNbNz7zdVhwdlhbhahwdVhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1634464136&gen=playurlv2&os=bcache&oi=3746060477&trid=00000933be06129b446f851bef6913e7d241u&platform=pc&upsig=3e5688acb0c60cd901bd4d3bfe4e5764&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,platform&cdnid=6773&mid=310265481&bvc=vod&nettype=0&orderid=0,3&agrr=1&logo=80000000" --audio-file="a"

Onedrive：
mpv --http-header-fields='authorization: Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJSUzI1NiIsIng1dCI6Im5PbzNaRHJPRFhFSzFqS1doWHNsSFJfS1hFZyIsImtpZCI6Im5PbzNaRHJPRFhFSzFqS1doWHNsSFJfS1hFZyJ9.eyJhdWQiOiJodHRwczovL3dlYnNoZWxsLnN1aXRlLm9mZmljZS5jb20iLCJpc3MiOiJodHRwczovL3N0cy53aW5kb3dzLm5ldC9jZGY0ODk2MS01N2E5LTQxMTQtOTc3Ni03YWI1NWVhNTVlMWMvIiwiaWF0IjoxNjI0Njc0MjIyLCJuYmYiOjE2MjQ2NzQyMjIsImV4cCI6MTYyNDY3ODEyMiwiYWNyIjoiMSIsImFpbyI6IkUyWmdZR2c5Wk1obkk1MS9TK3ZMdk1tL1BiV2xkM3lkTDNGMWx1OEozUitHZXZKWk54MEIiLCJhbXIiOlsicHdkIl0sImFwcGlkIjoiODliZWUxZjctNWU2ZS00ZDhhLTlmM2QtZWNkNjAxMjU5ZGE3IiwiYXBwaWRhY3IiOiIwIiwiZmFtaWx5X25hbWUiOiLmnY4iLCJnaXZlbl9uYW1lIjoi56ue5oupIiwiaXBhZGRyIjoiMjIzLjcyLjEwNS4zMiIsImxvZ2luX2hpbnQiOiJPLkNpUm1abVk1TW1OaU5DMHpabVk1TFRSbFpqZ3RPRE01TkMwME1EaG1aakV5TXpWaVlURVNKR05rWmpRNE9UWXhMVFUzWVRrdE5ERXhOQzA1TnpjMkxUZGhZalUxWldFMU5XVXhZeG9VUVVSVUxUUTJNVGxBWW5Wd2RDNWxaSFV1WTI0Z1dRPT0iLCJuYW1lIjoi5p2O56ue5oupIiwib2lkIjoiZmZmOTJjYjQtM2ZmOS00ZWY4LTgzOTQtNDA4ZmYxMjM1YmExIiwicHJlZmVycmVkX3VzZXJuYW1lIjoiQURULTQ2MTlAYnVwdC5lZHUuY24iLCJwdWlkIjoiMTAwMzIwMDExM0E1N0FCNSIsInB3ZF9leHAiOiIwIiwicHdkX3VybCI6Imh0dHBzOi8vcG9ydGFsLm1pY3Jvc29mdG9ubGluZS5jb20vQ2hhbmdlUGFzc3dvcmQuYXNweCIsInJoIjoiMC5BUzhBWVluMHphbFhGRUdYZG5xMVhxVmVIUGZodm9sdVhvcE5uejNzMWdFbG5hY3ZBQncuIiwic2NwIjoiU2hlbGxTZXR0aW5ncy5SZWFkIiwic3ViIjoiem9EZXFwWkNSS2ZsSXRjc3BVSU5QUDZpOEpoOXJfOGlUYlc2dVdxblpmQSIsInRpZCI6ImNkZjQ4OTYxLTU3YTktNDExNC05Nzc2LTdhYjU1ZWE1NWUxYyIsInVuaXF1ZV9uYW1lIjoiQURULTQ2MTlAYnVwdC5lZHUuY24iLCJ1cG4iOiJBRFQtNDYxOUBidXB0LmVkdS5jbiIsInV0aSI6IlRrTW40cE5wM0U2d2lrV04zaDBGQUEiLCJ2ZXIiOiIxLjAifQ.bAe5pOwiOPzTeCDxa9pUBQDBUzqS8z3ISWifxwfVagI29hZoiEQgTrsNC-KeS7IViXxOZUrEcBUoZEA9VL1s7ALLC60fiwZSJOpwoO5O8LrTd591kZn4XdR3jN8VeF03GSJM57V2V8uXbs_p5h5zFYqRJUJAsT52DcZ-atRK6m8GH256fJnHvxk3KUM6_DtLeprOXxkiKRaXk0oRlOvigY_VPTPwwjuUOgI5JIiXc7ALsnNdNNqJYiXGxk_i91RAxZsZoosOltx_Nl0wuX1gohVb-q10roaY9S7dI6TIqVnhuja1WS7MSDN1SwER1IHFCrPVuDkJj8OkVw4Gx9yaIw, cookie: ClientStorageCookie=QIDxJIp9ergCPPoR2Lktvm3ErdvgqsnkUs4EOz18NEw%3D%26jqhrtbNUIP%2B3yb%2FhwcNkNQ%3D%3D' "https://bupteducn-my.sharepoint.com/personal/adt-4619_bupt_edu_cn/_layouts/15/download.aspx?UniqueId=474d891d%2D8f77%2D4fc9%2D98da%2D04f1ed764739"


Referer下载视频：

B站：
ffplay -referer "https://www.bilibili.com/" -user_agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.39"  -i "https://upos-sz-mirrorkodoo1.bilivideo.com/upgcxcode/68/65/375426568/375426568-1-30106.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1627101349&gen=playurlv2&os=kodoo1bv&oi=2084614345&trid=71ee79c865684255a8bb9d122a844b0bu&platform=pc&upsig=1246de43ba58e3aeb2bd4e85c9e38dd3&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,platform&mid=310265481&bvc=vod&nettype=0&orderid=0,3&agrr=1&logo=80000000" 

阿里云盘
ffplay -headers "referer:https://www.aliyundrive.com/" -user_agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.39" -i "https://bj29.cn-beijing.data.alicloudccp.com/5fc46d6b59793ab4a0a244a0bcbd602252317e22%2F5fc46d6b3483e294cf1f4e448c2bc1fc57bc34e5?di=bj29&dr=845445&f=5fc46d6b59793ab4a0a244a0bcbd602252317e22&response-content-disposition=attachment%3B%20filename%2A%3DUTF-8%27%27Alita.Battle.Angel.2019.1080p.BluRay.x264.DTS-WiKi.mkv&u=d211ced31ff2499cb8d7910249c1c193&x-oss-access-key-id=LTAIsE5mAn2F493Q&x-oss-additional-headers=referer&x-oss-expires=1628161531&x-oss-signature=F%2FkkOaj%2BN66Rgr%2F%2BryhpxqfmvnokRy2yqIY8Je5AFUQ%3D&x-oss-signature-version=OSS2" 

阿里云盘+电视
ffmpeg -rtbufsize 100 -re -headers "referer:https://www.aliyundrive.com/" -user_agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.39" -i "https://bj29.cn-beijing.data.alicloudccp.com/5fc46d6b59793ab4a0a244a0bcbd602252317e22%2F5fc46d6b3483e294cf1f4e448c2bc1fc57bc34e5?di=bj29&dr=845445&f=5fc46d6b59793ab4a0a244a0bcbd602252317e22&response-content-disposition=attachment%3B%20filename%2A%3DUTF-8%27%27Alita.Battle.Angel.2019.1080p.BluRay.x264.DTS-WiKi.mkv&u=d211ced31ff2499cb8d7910249c1c193&x-oss-access-key-id=LTAIsE5mAn2F493Q&x-oss-additional-headers=referer&x-oss-expires=1628062550&x-oss-signature=HmcgsZ8i0jiTen8SBxEfbJ7JxsnVqVbDc7JzaRheldg%3D&x-oss-signature-version=OSS2" -c:v copy -sn -f hls - |dlnanow -


Powershell批量
get-childitem -name -r *.png | foreach-object {ffmpeg -i $_  -vf scale=750*750:flags=lanczos test\$_}

get-childitem -name -r *.ts | foreach-object {$a=($_ -replace(".ts","-HDR.mp4"));ffmpeg -i $_ -c copy "$a"}


Discord表情包整理
$url=(Get-Content "url_list.txt"); `
$name=(Get-Content "name_list.txt"); `
for($i=0;$i-lt 431;$i++) {$ext=($url[$i].Substring($url[$i].Length-13,4)); `
$name[$i]=(-join($name[$i],$ext)); `
aria2c --all-proxy='127.0.0.1:10809' $url[$i] -o $name[$i]}


$url=(Get-Content "url_list.txt"); `
$name=(Get-Content "name_list.txt"); `
for($i=0;$i-lt 21;$i++) {$name[$i]=(-join($name[$i],'.png')); `
aria2c --all-proxy='127.0.0.1:10809' $url[$i] -o $name[$i]}

从音乐tag信息提取歌词（Mediainfo）
get-childitem -name -r *.flac | foreach-object {$lrc=$(mediainfo $_ | findstr Lyrics).split(' / ').replace('Lyrics                                   : ',''); add-content $_.replace('flac','lrc') $lrc}

从音乐提取封面
get-childitem -name -r *.mp3 | foreach-object {ffmpeg -i $_ -map 0:v -c copy $_.replace('mp3','jpg')  }

封面文件名去掉单引号
get-childitem -name -r *.jpg | foreach-object { ren $_ $_.replace("'",'')}



多轨道截取
ffmpeg -ss 00:00:00 -i "E:\Frozen.II.2019.1080p.TWN.Blu-ray.AVC.DTS-HD.MA.7.1-nLiBRA\BDMV\STREAM\00906.m2ts" -t 00:01:02.60 -map 0:v -c:v copy  -map 0:a -c:a copy -map 0:s -c:s copy -map_metadata 0  -max_muxing_queue_size 9999 "J:\temp\AIF-pt2.mkv"


ffmpeg -ss 00:05:00 -i "F:\Frozen.2013.2160p.UHD.BluRay.TrueHD.7.1.Atmos.HDR.x265-BlzT.mkv" -c:v libx264 -vb 10000k -vf zscale=t=smpte2084:npl=100,zscale=p=bt709:t=bt709:m=9:r=pc,format=yuv420p10 test-HDR.mp4

直接添加HDR元数据
ffmpeg -i "E:\Show Yourself(From Frozen 2019)\粤语.mp4" -c:v copy -color_primaries bt2020 -colorspace bt2020nc -color_trc smpte2084 "F:\test HDR add.mkv"


HDR+SVP
ffmpeg -i "C:\Users\李竞择\Documents\avs脚本\3x动画.avs" -c:v libx265 -x265-params "level=6:colorprim=bt2020:colormatrix=bt2020nc:transfer=smpte2084:master-display=G(13250,34500)B(7500,3000)R(34000,16000)WP(15635,16450)L(10000000,1)" -pass 2 -b:v 50000k -preset fast -c:a copy "F:\test HDR.mkv"


ffmpeg -i "C:\Users\李竞择\Documents\Tencent Files\1981671849\FileRecv\3306c6.avs" -c:v hevc_nvenc -rc 7 -b:v 100M -preset 1 -qmin 1 -qmax 35 -color_primaries bt2020 -colorspace bt2020nc -color_trc smpte2084 "F:\12323.mkv"


去水印
ffmpeg -i "120fps测试.mkv" -vf delogo=x=983:y=23:w=275:h=65 -c:v hevc_nvenc -vb 6000k -c:a copy "delogo sample.mkv"


ffmpeg -i "C:\Users\李竞择\Documents\Tencent Files\1981671849\FileRecv\3306c6.avs" -c:v libx265 -x265-params "level=6:colorprim=bt2020:colormatrix=bt2020nc:transfer=smpte2084:master-display=G(13250,34500)B(7500,3000)R(34000,16000)WP(15635,16450)L(10000000,1)" -crf 24 -preset ultrafast "C:\Users\李竞择\Documents\Tencent Files\1981671849\FileRecv\1232423.mkv"


打码
ffmpeg -hwaccel dxva2 -i "E:\[VRFunny] CAUGHT HIM STARING AT ME _ VRCHAT Funny Moments-uyrq7Lht5_c.mkv" -lavfi "
[0:v]trim=48.0:113.4 ,setpts=PTS-STARTPTS[a],
[0:a]atrim=48.0:113.4 ,asetpts=PTS-STARTPTS[aa],
[0:v]trim=113.4:135 ,setpts=PTS-STARTPTS[b],
[0:a]atrim=113.4:135 ,asetpts=PTS-STARTPTS[ba],
[0:v]trim=135:279.57 ,setpts=PTS-STARTPTS[c],
[0:v]trim=279.57:285.45 ,gblur=50,setpts=PTS-STARTPTS[cb],
[0:a]atrim=start=135 ,asetpts=PTS-STARTPTS[ca],
[0:v]trim=285.45:433.6 ,setpts=PTS-STARTPTS[e],
[0:v]trim=433.6:434.57 ,gblur=50,setpts=PTS-STARTPTS[eb],
[0:v]trim=434.57:440.14 ,setpts=PTS-STARTPTS[f],
[0:v]trim=440.14:442.5 ,setpts=PTS-STARTPTS[fb],
[0:v]trim=start=442.5 ,setpts=PTS-STARTPTS[g],
[a][b][c][cb][e][eb][f][fb][g]concat=n=9[outv],
[aa][ba][ca]concat=n=3:v=0:a=1[outa]
" -map [outv] -map [outa] -c:a aac -ab 529k -c:v h264_qsv -preset veryslow -look_ahead 1 -look_ahead_depth 60 -look_ahead_downsampling 3 -vb 7.5M blur.mkv


合并用
ffmpeg -f concat -safe 0 -i "C:\Users\Lee7723\Documents\avs脚本\合并.txt" -map 0 -c copy "J:\AIF.mkv"


SVP HDR Project temp for 20
ffmpeg -i "C:\Users\李竞择\Documents\Tencent Files\1981671849\FileRecv\3306c6.avs"  -c:v libx265 -crf 10 -preset veryfast -x265-params "keyint=230:repeat-headers=1:aq-mode=2:qpmin=0:qpmax=16:colorprim=bt2020:colormatrix=bt2020nc:transfer=smpte2084:master-display=G(13250,34500)B(7500,3000)R(34000,16000)WP(15635,16450)L(10000000,500)"  "E:\SVP Project\Frozen II - Ultra HD™-020---.mkv"


ffmpeg -i "C:\Users\李竞择\Documents\Tencent Files\1981671849\FileRecv\3306c6.avs"  -c:v libx265 -crf 8 -preset slow -x265-params "keyint=230:repeat-headers=1:aq-mode=2:qpmin=3:qpmax=14:colorprim=bt2020:colormatrix=bt2020nc:transfer=smpte2084:master-display=G(13250,34500)B(7500,3000)R(34000,16000)WP(15635,16450)L(10000000,500)"  "E:\SVP Project\Frozen II - Ultra HD™-011---.mkv"


设备
ffmpeg -list_devices true -f dshow -i dummy

录屏
ffmpeg -f gdigrab -i desktop -c:v png "j:\temp\test.mkv"

ffmpeg -y  -f dshow -i video="screen-capture-recorder"  -r 60 -c:v hevc_nvenc -b:v 8000k "j:\temp\test.mkv"

录音（麦克风）
ffmpeg -f dshow -i audio="@device_cm_{33D9A762-90C8-11D0-BD43-00A0C911CE86}\wave_{59AC4CB8-DC81-41F4-8ED1-DBB00D00AFD9}"  "j:\out.wav"
 
 （立体声混音）
ffmpeg -f dshow -i audio="@device_cm_{33D9A762-90C8-11D0-BD43-00A0C911CE86}\wave_{6B19272A-66F9-4520-9DAA-1F978352C915}"  "j:\out.wav"


avs转色域
ffmpeg -i "C:\Users\李竞择\Documents\avs脚本\HDR转映射.avs" -c:v nvenc preset=11 "F:\out.mkv"


转色域
ffmpeg -i "E:\CE2A3C1FD97807105759A866F125B7D3.mp4" -vf zscale=t=linear:npl=100,format=gbrpf32le,zscale=p=bt709,tonemap=hable,zscale=t=bt709:m=bt709:r=pc,format=yuv420p -c:v libx264 -preset veryfast -an "E:\ITU--.mp4"

hable:desat=0:peak=6


转映射+SVP
"C:\Program Files\VapourSynth\core\vspipe.exe" --y4m  "C:\Users\Lee7723\Documents\avs脚本\SVP+Tonemap.vpy" - |ffmpeg -i - -i "K:\Movies\Frozen.I-II.2014-2019.UHD.BluRay.2160p.10bit.HDR.4Audio.TrueHD(Atmos).7.1.x265-beAst\Frozen.II.2019.RERIP.UHD.BluRay.2160p.10bit.HDR.4Audio.TrueHD(Atmos).7.1.x265-beAst\UTF-8vocals.wav"  -vf format=yuv420p -map 0:0 -map 1:a -c:v h264_nvenc -preset 1 -2pass 1 -b:v 30000k -c:a aac -ab 320k  "AIF-vocal.mp4"

转映射
vspipe --y4m  "C:\Users\19816\Documents\Video Encoding\转映射.vpy" - |ffmpeg -i - -i "D:\Temporary Work Space\LIG(multi audio track).mkv" -vf format=yuv420p,"subtitles=LIG(multi audio track).ass" -map 0:0 -map 1:a:0 -c:v h264_qsv -preset veryslow -b:v 10000k -look_ahead 1 -sn -c:a aac -ab 320k  "LIG 4K.mp4"


SDR -> HDR
ffmpeg -i "C:\Users\19816\Documents\Video Encoding\temp.avs" -vf zscale=p=2020:t=smpte2084:m=2020_ncl:pin=709:tin=bt709:min=709:npl=300,format=yuv420p -c:v h264_qsv -b:v 100000k -preset veryslow "qsv-hdr_2.mp4"


转映射Open-CL
ffmpeg -i I:\Frozen.2013.2160p.UHD.BluRay.TrueHD.7.1.Atmos.HDR.x265-BlzT.mkv -vf "format=p010,hwupload,tonemap_opencl=t=bt2020:tonemap=linear:format=p010,hwdownload,format=p010" -c:v libx264 -r 0.1 J:\temp\test.mkv


裁剪
ffmpeg -ss 00:00:00.87 -i "C:\Users\李竞择\Videos\Captures\NeedForSpeedPayback_2020_04_25_21_02_13_522.mkv" -t 00:00:12.00 -vf setpts=2*PTS,crop=2000:2000:720:0,scale=320:320,setsar=1:1 -c:v libx264 -fs 1024k -af atempo=0.5 -c:a aac -ab 96k f:/out.mp4


裁剪
ffmpeg -ss 00:00:03.83 -i "E:\Frozen.II.2019.1080p.TWN.Blu-ray.AVC.DTS-HD.MA.7.1-nLiBRA\BDMV\STREAM\00907.m2ts" -t 00:00:03.95 -vf setpts=2*PTS,crop=1600:1600:680:240,scale=320:320,setsar=1:1 -r 10 -c gif f:/out.gif


字幕
ffmpeg `
-hwaccel auto `
-i "D:\OneDrive - lijingze\文档\Video Encoding\Subtitle.avs" `
-hwaccel auto `
-i "E:\[GreatMoonAroma] Squid game MrBeast in VRchat! 【 VRchat 】-M0Q1y1NKzdA.mkv" `
-map 0 -map 1:a `
-c:a aac -ab 529k -c:v h264_qsv -preset veryslow -look_ahead 1 -look_ahead_depth 60 -look_ahead_downsampling 3 -vb 10M -minrate 4M -bufsize 5M `
GMA.mkv


烧录字幕（需要在要编辑的视频目录下打开命令行，不能用于非文字类字幕）
ffmpeg -i "" -vf subtitles="" -c:v libx264 -preset slow  -crf 20 ""


烧录字幕（另一种滤镜，可用于sup（PGS）图形字幕）
ffmpeg -i 00919.m2ts -filter_complex [0:v][0:s:0]overlay[v] -map [v] -map 0:a -c:v h264_nvenc -c:a copy -cq 1 j:\temp\test-sub.mkv


自动打轴
ffmpeg -hwaccel dxva2 -i "E:\[Drumsy] She Ruined Yoga.-hy4FpdINJss.mkv" -vf crop=x=700:y=920:w=520:h=110,scdet=t=20 -f null -


图片序列编码为视频
ffmpeg -threads 6 -f image2 -i "E:\Adobe Premiere Pro Auto-Save\1603865541285_1_2.00x_4680x2160_thf-1.0.1_2.00x_9360x4320_thf-1.0.1_png\00%4d.png" -i "D:\FFOutput\Voicians - Empire.mp3" -c:v libx264 -crf 16 -preset slow -r 50 -c:a copy "D:\encoded.mkv"

ffmpeg -threads 6 -f image2 -i "E:\Adobe Premiere Pro Auto-Save\1603865541285_1_2.00x_4680x2160_thf-1.0.1c-b:a 320k -vf format=yuv420p -c:v libx264 -preset slow -x264-params "keyint=230" -b:v 20000k -bufsize 3000k -maxrate 50000k -pass 1 -f mp4 NUL
ffmpeg -i "C:\Users\李竞择\Documents\avs脚本\5x动画.avs" -c:a aac -b:a 320k -vf format=yuv420p -c:v libx264 -preset slow -x264-params "keyint=230" -b:v 20000k -bufsize 3000k -maxrate 50000k -pass 2 "j:\temp\Try Everything SVP 120fps.mp4"


转播用
RTMP直播协议
$env:http_proxy="http://127.0.0.1:10809";`
$url=$(youtube-dl -f 720p60 -g https://www.twitch.tv/kromia );`
for($i=1;$i-lt 20;$i--) `
{ffmpeg `
-f hls  `
-reconnect_streamed 1  `
-rtbufsize 80M `
-re `
-i "$url" `
-c copy `
-rw_timeout 10000 `
-f flv `
-ignore_io_errors 1 `
"rtmp://live-push.bilivideo.com/live-bvc/?streamname=live_310265481_75466439&key=626d589ba9880ffb687eabba95245c5d&schedule=rtmp&pflag=9"}


srt直播协议
$env:http_proxy="http://127.0.0.1:10809";`
for($i=1;$i-lt 20;$i--) `
{$url=$(yt-dlp -f 720p60 -g https://www.twitch.tv/glubbable );`
ffmpeg `
-f hls  `
-reconnect_streamed 1  `
-rtbufsize 80M `
-re `
-i "$url" `
-c copy `
-rw_timeout 10000 `
-f mpegts `
-ignore_io_errors 1 `
"srt://live-push.bilivideo.com:1937?streamid=#!::h=live-push.bilivideo.com,r=live-bvc/?streamname=live_310265481_75466439,key=626d589ba9880ffb687eabba95245c5d,schedule=srtts,pflag=9"}


$env:http_proxy="http://127.0.0.1:10809";`
for($i=1;$i-lt 20;$i--) `
{$url='https://video-weaver.waw01.hls.ttvnw.net/v1/playlist/CrMFtbGJbV1vV1oMrSkevNgSE3dxpSeHNdQNhN0z7hQ9R1Ea7_84y-lVNtecEXJ10C5dLWgWmeQQJeZmszY1HU5jOM0b-ZpedVU39XJIX5Haik-5hEvlDYvTGEsC8jqoR67IAH4TLzuclksfD-EC1pgkL8uuIp2plyGV7Oes7VlTULyRyBxH5W_a-5WKAHgsV1FJ0WVUMf_8K0miwv4DFY_tVKubRNnwTZW18fphIjDEf_IKYU0rjkiZMU5eEHY9YbONrYimgJ807E4BZgoMc03WgRunWrv7Ie8x1TEYNITMT_GxZgIilMSrPUlF-hoTPs1aD3awukbLAbMrwXgnVMBiz51R70bOC8Ze8UWvFxWGoNlzUrF8pay69VazhNAcBWAg43jD-2Dhv4TtLEAXqvRAJ6tG-Z7KKMb9-3JPTHwS7cSCKs23D1LKWND4Q8seZxRwMe-WZicUsylSzwq0K_6DQ2fcEfqmXc2cUCk_XJuwgonGgv7-kZW2-uA7yG9FuvOmyA6w6scRepk_2rIBwlDwSn5IB1wTPeAdFO9bQcwgZP-8MRdiTdVu2D88FY6hT8nbOpGAqVFpY1eS2QqouYmC8UhLYnsk-iDUk9RJoZWm4pjJdAXvXiUNskAGzm8iZBmsgK6p4A8g_zPjQX7mM23NitCkHhbWB91xj1djpKCiBfANZQKzEzfwFkngXiaTG12RK2rAJpB3Wd6gsvN8nZs730JehgTV5JSqwOS2Rkw26cS9UJFuUFtbP9HO6soUEVbf06_28fhFcy6LvTkJlgIe0cy0qHTwsRCCt9hJwZk1ZPbIkKYibTevh72erAJmoU9vg_3mA_783n5rmnT7vzyLrKAg688uhUSPl-51i7roic6UgiJWlReS533t_w4s2UWRX2Ihi7VEHGRWSeHFvhsmUOQuURIQcPFb8h1kGJqmjynR9H0ANxoMAjffEe-OHisy_h7v.m3u8';`
ffmpeg `
-rtbufsize 80M `
-re `
-reconnect 1 `
-reconnect_delay_max 15 `
-i "$url" `
-c copy `
-f flv `
-rw_timeout 10000 `
-ignore_io_errors 1 `
"rtmp://live-push.bilivideo.com/live-bvc/?streamname=live_310265481_75466439&key=def5381fa58bcc8e2f235d250f2888a7&schedule=rtmp&pflag=1"}


本地直播配合http.server
$env:http_proxy="http://127.0.0.1:10809"; `
for($i=1;$i-lt 20;$i--) {`
$url='https://manifest.googlevideo.com/api/manifest/hls_playlist/expire/1637272629/ei/1XeWYZGVGYeG6dsPo-eNSA/ip/89.46.223.240/id/5qap5aO4i9A.1/itag/96/source/yt_live_broadcast/requiressl/yes/ratebypass/yes/live/1/sgoap/gir%3Dyes%3Bitag%3D140/sgovp/gir%3Dyes%3Bitag%3D137/hls_chunk_host/rr2---sn-5hneknee.googlevideo.com/playlist_duration/30/manifest_duration/30/vprv/1/playlist_type/DVR/initcwndbps/10150/mh/30/mm/44/mn/sn-5hneknee/ms/lva/mv/m/mvi/2/pl/24/dover/11/keepalive/yes/fexp/24001373,24007246/mt/1637250757/sparams/expire,ei,ip,id,itag,source,requiressl,ratebypass,live,sgoap,sgovp,playlist_duration,manifest_duration,vprv,playlist_type/sig/AOq0QJ8wRQIhAMwNk8ggyBxfVd5h2B28Skfkn3TJxiU7rGHPHJoxXyxnAiAh6LM7fXWA19fQJ8x-E45giZ_qHYyCczh_iWscOqn9-g%3D%3D/lsparams/hls_chunk_host,initcwndbps,mh,mm,mn,ms,mv,mvi,pl/lsig/AG3C_xAwRQIhAMS50WOVV184mrUPCOdQLvWi8r82PTito-JUnkVKmLKDAiB_ZvSndXp_Fk-Ul66x88vYXW_9jhTnKElrX4Pb3KdY7g%3D%3D/playlist/index.m3u8';`
ffmpeg-4.4 `
-rtbufsize 80M `
-re `
-stream_loop -1 `
-i "$url" `
-ignore_io_errors 1 `
-c:a copy -c:v copy -f hls -hls_wrap 10 -hls_list_size 8 -hls_flags program_date_time hls/index.m3u8}


$env:http_proxy="http://127.0.0.1:10809"; `
get-childitem -name -r *.mkv | foreach-object `
{`
ffmpeg `
-hwaccel dxva2 `
-re `
-i $_ `
-ignore_io_errors 1 `
-bitexact `
-c:v copy -c:a aac -window_size 8 -remove_at_exit 1 -extra_window_size 2 -adaptation_sets "id=0,streams=v id=1,streams=a" -f dash E:/hls/index.mpd}


HDR直播测试（frame drop issue）
ffmpeg -hwaccel cuda -hide_banner -video_size 1920x1080 -framerate 30 -pixel_format nv12 -f dshow -rtbufsize 1000M -i video="OBS Virtual Camera":audio="virtual-audio-capturer" -vf zscale=p=2020:t=smpte2084:m=2020_ncl:pin=709:tin=bt709:min=709:npl=100,format=yuv420p  -color_primaries bt2020 -colorspace bt2020nc -color_trc smpte2084 -muxrate 1M -c:a aac -ab 529k -c:v h264_nvenc -preset p7 -vb 8M -minrate 2M -bufsize 5M -f flv -ignore_io_errors 1  -user_agent 'libobs version 27.0.0' "rtmp://live-push.bilivideo.com/live-bvc/?streamname=live_310265481_75466439&key=def5381fa58bcc8e2f235d250f2888a7&schedule=rtmp"


转m3u8
ffmpeg -i "F:\Formula.1.Drive.to.Survive.S02.1080p.NF.WEB-DL.DDP5.1.x264-NTG\Formula.1.Drive.to.Survive.S02E01.Lights.Out.1080p.NF.WEB-DL.DDP5.1.x264-NTG.mkv" -c:v libx264 -preset slow -tune film -vb 3000k -c:a copy -map 0:s -map 0:v -map 0:a -c:s copy -f hls -hls_time 60 -hls_list_size 0 D:\temp\hls-test\test.m3u8

ffmpeg -i "F:\Formula.1.Drive.to.Survive.S02.1080p.NF.WEB-DL.DDP5.1.x264-NTG\Formula.1.Drive.to.Survive.S02E01.Lights.Out.1080p.NF.WEB-DL.DDP5.1.x264-NTG.mkv" -f segment -segment_time 30 -segment_format mpegts -segment_list D:\temp\hls-test\test.m3u8 -c:v h264_qsv -preset veryslow -vb 2500k -map 0 -c:a copy -c:s copy -bsf:v h264_mp4toannexb D:\temp\hls-test\test%3d.ts

ffmpeg -i "E:\SSIM_test\clips\00910.m2ts" -c:v libx264 -preset slow -tune film -vb 3000k -c:a copy -map 0:s -map 0:v -map 0:a -c:s copy -flags +cgop -g 30 -hls_time 60 hls\out.m3u8

ffmpeg -re -i "E:\SSIM_test\clips\00910.m2ts" -codec copy -map 0 -f segment -segment_list hls/playlist.m3u8 -segment_list_flags +live -segment_time 3 hls\out%03d.mkv


硬解测试
ffmpeg -hwaccel qsv -threads 1 -i INPUT -max_muxing_queue_size 1024 -f null  -  -benchmark
ffmpeg -hwaccel cuvid -threads 1 -i "I:\Frozen.2013.2160p.UHD.BluRay.TrueHD.7.1.Atmos.HDR.x265-BlzT.mkv" -max_muxing_queue_size 1024 -f null  -  -benchmark


显示视频详细信息
ffprobe -show_format -print_format json -show_streams 


测试OGG
ffmpeg -i "C:\Users\Lee7723\Documents\Tencent Files\1981671849\FileRecv\Starset - My Demons.wav" -c:a libvorbis "C:\Users\Lee7723\Documents\Tencent Files\1981671849\FileRecv\Starset - My Demons.ogg"


指定声道混音
-map_channel
ffmpeg -i "E:\Frozen 2 Domestic Trailer 1.mov" -filter_complex "[0:a:0][0:a:1][0:a:2][0:a:3][0:a:4][0:a:5]amerge=inputs=6" -c:a truehd -strict -2 audio-merge.ac3

ffmpeg -i   -af "pan=5.1|c0=stream1|c1=stream1|c2=stream1|c3=stream1|c4=stream1|stream1" -c:a ac3 "E:\Frozen Series\Frozen 2 Domestic Trailer 1.mka"

静音某声道
ffmpeg -ss 00:06:00.00 -i "K:\Movies\FROZEN~1.X26\FROZEN~1.X26\FROZEN~1.MKV"  -t 00:01:51.07 -c:v copy -af "pan=7.1|c0=c0|c1=c1|c3=c3|c4=c4|c5=c5|c6=c6|c7=c7" -c:a aac -ac 2 -ab 320k "AIF.mp4"


ProRes Proxy
ffmpeg -i J:\temp\test.mkv -vf unsharp -c:v prores_ks -profile 0 -an -vb 1600k J:\temp\test1080P-proxy.mov


图片扩展出空像素
ffmpeg  -f image2 -i "D:\Drivers\QQfiles\1981671849\FileRecv\MobileFile\mono\下载%2d.png" -filter_complex "nullsrc=size=1000x1250;[background][0:v] overlay=0:200" -c png -vframes 24 "D:\Drivers\QQfiles\1981671849\FileRecv\MobileFile\mono\mono-white\wallpaper%2d.png"


上一个的基础上背景填充为白色
ffmpeg  -f image2 -i "D:\Drivers\QQfiles\1981671849\FileRecv\MobileFile\mono\下载%2d.png" -filter_complex "nullsrc=size=1000x1250,lutrgb='r= 255:g=255:b=255'[background];[background][0:v] overlay=0:200" -c png -vframes 24 "D:\Drivers\QQfiles\1981671849\FileRecv\MobileFile\mono\mono-white\wallpaper%2d.png"


ffmpeg  -f image2 -i "D:\Drivers\QQfiles\1981671849\FileRecv\MobileFile\mono\下载%2d.png" -i "C:\Users\19816\Pictures\bg.png" -filter_complex "[1:v][0:v] overlay=0:400,format=rgb24" -c png -vframes 32 "D:\Drivers\QQfiles\1981671849\FileRecv\MobileFile\mono\mono-colored\wallpaper%2d.png"


计算SSIM(avs)
ffmpeg -i "C:\Users\19816\Documents\Video Encoding\SSIM.avs" -f null -

计算SSIM(ffmpeg)
ffmpeg -hwaccel dxva2 -referer "https://www.bilibili.com/" -user_agent "Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.39"  -i "https://upos-sz-mirrorkodo.bilivideo.com/upgcxcode/68/65/375426568/375426568-1-30106.m4s?e=ig8euxZM2rNcNbdlhoNvNC8BqJIzNbfqXBvEqxTEto8BTrNvN0GvT90W5JZMkX_YN0MvXg8gNEV4NC8xNEV4N03eN0B5tZlqNxTEto8BTrNvNeZVuJ10Kj_g2UB02J0mN0B5tZlqNCNEto8BTrNvNC7MTX502C8f2jmMQJ6mqF2fka1mqx6gqj0eN0B599M=&uipk=5&nbs=1&deadline=1627143549&gen=playurlv2&os=kodobv&oi=2084615033&trid=87aad10d2e6e4e4b812ab9a326862689u&platform=pc&upsig=99c0a1ced641af1cfd51419930637c76&uparams=e,uipk,nbs,deadline,gen,os,oi,trid,platform&mid=310265481&bvc=vod&nettype=0&orderid=0,3&agrr=1&logo=80000000"  -hwaccel dxva2 -i "D:\temp\GMA.mkv" -lavfi "[0:v]settb=AVTB,setpts=PTS-STARTPTS[main],[1:v]settb=AVTB,setpts=PTS-STARTPTS[ref];[0:v]settb=AVTB,setpts=PTS-STARTPTS[main1],[1:v]settb=AVTB,setpts=PTS-STARTPTS[ref1];[main][ref]ssim;[main1][ref1]psnr" -f null -


计算PSNR
ffmpeg -i "E:\2160p.120fps-mvtools.mp4"  -i "E:\download\842551577\3\120\video.m4s"  -lavfi psnr="stats_file=/SSIM_test/psnr-ffmpeg/prores.log" -f null -


VMAF(Netflix)画质判定
ffmpeg -i "E:\SSIM_test\clips\00910.m2ts" -i "E:\SSIM_test\clips\high.mkv" -lavfi libvmaf=model_path="E\\:/SSIM_test/vmaf/vmaf_4k_v0.6.1.pkl:enable_transform" -f null -
(fail)

曲线调色(PS曲线预设)
ffmpeg -i Lanczos4Resize000039.png -lavfi curves=psfile=未命名.acv -c png curve.png

曲线调色(自定点生成曲线)
ffmpeg -i Lanczos4Resize000039.png -lavfi curves=all="0/0 0.25/0.2 0.75/0.8 1/1" -c png curve2.png


MVTools(in progress)
ffmpeg -i "C:\Users\19816\Documents\Video Encoding\mvtools.avs" -c:v h264_qsv -preset veryslow -vb 8000k -movflags +faststart test.mp4


元数据
ffmpeg -i "E:\SSIM_test\clips\high.mkv" -c copy -metadata:s:v:0 title="Enlarged by Lee-7723" -metadata:s:v:0 comment="Encodeing & subtitle by Lee-7723" metatest.mkv


mp4\mov视频加密解密
https://www.jianshu.com/p/ea0761f6aa04

ffmpeg -hwaccel dxva2 -i "D:\迅雷下载\victoria_together_presents_the_long_weekender_1080_6000_kb_enc_dash_track1_init.mp4" -encryption_scheme cenc-aes-ctr -encryption_key 6B305A0E073A9A7C6B305A0E073A9A7C -encryption_kid 6B305A0E073A9A7C6B305A0E073A9A7C -c copy encrypt_test.mp4


ffplay -decryption_key "a72173c3eab36ae5a6f59cb62a79fd17" "D:\迅雷下载\victoria_together_presents_the_long_weekender_1080_6000_kb_enc_dash_track1_init.mp4"


HDR元数据
ffmpeg -i "E:\SSIM_test\clips\00910.m2ts" -vf zscale=p=2020:t=smpte2084:m=2020_ncl:pin=709:tin=bt709:min=709:npl=200,format=yuv420p10 -c:v libx265 -x265-params "level=6:colorprim=bt2020:colormatrix=bt2020nc:transfer=smpte2084:master-display=G(8500,39850)B(6550,2300)R(35400,14600)WP(15635,16450)L(10000000,50)" -b:v 20000k -preset fast -c:a aac -ac 2 -ab 320k "test-HDR.mkv"

master-display=G(8500,39850)B(6550,2300)R(35400,14600)WP(15635,16450)L(10000000,50)
（master-display bt2020）

master-display=G(13250,34500)B(7500,3000)R(34000,16000)WP(15635,16450)L(10000000,1)
（master-display P3）

HDR元数据 不重编码
ffmpeg -bitexact -i "D:\迅雷下载\只狼-剑圣苇名一心.mp4" -c copy -color_primaries bt2020 -colorspace bt2020nc -color_trc smpte2084 -bitexact "test-HDR.mp4"

get-childitem -name -r *.mp4 | foreach-object {$a=($_ -replace(".mp4","-HDR.mp4"));ffmpeg -hwaccel dxva2 -bitexact -i _$ -c copy -bsf:v h264_metadata=colour_primaries=9:transfer_characteristics=16:matrix_coefficients=9 -color_primaries bt2020 -colorspace bt2020nc -color_trc smpte2084 "$a"


mp4加上 -movflags +faststart。这样分享文件给别人的时候可以边下边看。


编码预设
-c:a aac -ab 529k -c:v h264_qsv -preset veryslow -look_ahead 1 -look_ahead_depth 60 -look_ahead_downsampling 3 -vb 10M -minrate 4M -bufsize 5M

-c:a aac -ab 529k -c:v h264_nvenc -preset p7 -rc-lookahead 120 -2pass 1 -vb 10M -minrate 2M -bufsize 5M

qsvencc --avhw -i "E:\[Furtrap] xQcOw VS Furtrap Anime Battle _ 'Is Fizzi a Furry'-jmL83rF1dyk.mkv" -u best --vbr 7500 --la-depth 60 --audio-copy -o test.mp4