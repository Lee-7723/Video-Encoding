$ss = 2; #起始时间，单位‘秒’
$to = 6; #结束时间，距离文件尾，单位‘秒’

mkdir trim_2s;
$filename = $(get-childitem -name -include *.mp3);
for($i=0; $i-lt $filename.length; $i++){
$output = '.\trim_2s\' + $filename[$i];
$end = $(.\mediainfo.exe $filename[$i] --Output=JSON | findstr Duration)[0].replace('"Duration": "','').replace('",','') - $to;
.\ffmpeg.exe -hide_banner -ss $ss's' -to $end's' -i $filename[$i] -c copy $output
}
pause;