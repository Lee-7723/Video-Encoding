$ss = 2; #��ʼʱ�䣬��λ���롯
$to = 6; #����ʱ�䣬�����ļ�β����λ���롯

mkdir trim_2s;
$filename = $(get-childitem -name -include *.mp3);
for($i=0; $i-lt $filename.length; $i++){
$output = '.\trim_2s\' + $filename[$i];
$end = $(.\mediainfo.exe $filename[$i] --Output=JSON | findstr Duration)[0].replace('"Duration": "','').replace('",','') - $to;
.\ffmpeg.exe -hide_banner -ss $ss's' -to $end's' -i $filename[$i] -c copy $output
}
pause;