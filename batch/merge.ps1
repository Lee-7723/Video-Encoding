$video=$(Get-ChildItem -name -Include '*.mp4'); #选择文件名里不带(1)的.mp4文件
for($i=0; $i-lt $video.length; $i++){
$audio = $video[$i].replace('.mp4','.mp3'); #替换文件名里'.mp4'为' (1).mp4'以匹配音频文件
$merge = $video[$i].replace('.mp4','-merge.mp4');
.\ffmpeg.exe -hide_banner -i $video[$i] -i $audio -map 0:v -map 1:a -c copy $merge
}
pause;