mkdir tmp;
$filename=(ls -name -include *.png);
for ($i=0; $i-lt $filename.Length; $i++) {
$output=$filename[$i].Replace('.png','.gif');
ffmpeg -hide_banner -loglevel 0 -i $filename[$i] -c png .\tmp\%3d.png;
gifski .\tmp\*.png -Q 100 -o $output;
rm .\tmp\*.png;
}
rm tmp;