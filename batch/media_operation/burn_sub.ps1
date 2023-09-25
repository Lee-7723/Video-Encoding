$video=$(Get-ChildItem -name -Include '*.mp4'); 
for($i=0; $i-lt $video.length; $i++){
$sub = $video[$i].replace('.mp4','.srt'); 
$output = $video[$i].replace('.mp4','-sub.mp4');
.\ffmpeg.exe -hide_banner -hwaccel auto -i $video[$i] -vf subtitles=$sub -c:v h264_qsv -preset veryslow -vb 8M -c:a copy $output
}
pause;