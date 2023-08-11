$audio=$(Get-ChildItem -name -Include '*.mp3'); 
$video=$(Get-ChildItem -name -Include '*.mp4'); 
for($i=0; $i-lt $video.length; $i++){
$merge = $audio[$i].replace('.mp3','.mp4');
.\ffmpeg.exe -hide_banner -i $video[$i] -i $audio[$i] -map 0:v -map 1:a -c copy $merge
}
pause;