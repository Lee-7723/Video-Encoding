mkdir output;
for($j = 0; $j -lt 30; $j++)
{
    $num = (1..904 | get-random -shuffle);
    for ($i = 0; $i -lt 100; $i++)
    {
        add-content concat.txt ("file '" + $num[$i] + ".MP4'")
    }

    .\ffmpeg.exe -hide_banner -f concat -safe 0 -i 'concat.txt' -c copy output/$j.mp4
    rm concat.txt
}
