$video=$(Get-ChildItem -name -Include '*.mp4'); #ѡ���ļ����ﲻ��(1)��.mp4�ļ�
for($i=0; $i-lt $video.length; $i++){
$audio = $video[$i].replace('.mp4','.mp3'); #�滻�ļ�����'.mp4'Ϊ' (1).mp4'��ƥ����Ƶ�ļ�
$merge = $video[$i].replace('.mp4','-merge.mp4');
.\ffmpeg.exe -hide_banner -i $video[$i] -i $audio -map 0:v -map 1:a -c copy $merge
}
pause;