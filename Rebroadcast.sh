link="https://www.twitch.tv/kromia"; \
for ((i=1;i>0;i))
do \
url=`youtube-dl -g $link`; \
ffmpeg \
-hide_banner \
-rtbufsize 80M \
-re \
-analyzeduration 5000 \
-reconnect 1 \
-reconnect_delay_max 15 \
-i $url \
-c copy \
-f mpegts \
-flvflags no_duration_filesize \
-analyzeduration 5000 \
-rw_timeout 10000 \
-ignore_io_errors 1 \
'srt://live-push.bilivideo.com:1937?streamid=#!::h=live-push.bilivideo.com,r=live-bvc/?streamname=live_310265481_75466439,key=626d589ba9880ffb687eabba95245c5d,schedule=srtts,pflag=9'
done

