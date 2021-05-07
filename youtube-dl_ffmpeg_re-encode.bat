set file_name=%1
set out_name=%file_name:mkv=mp4%

::for /f "tokens=1* delims=." %%a in (%file_name%) do (
::set only_name=%%a
::)
::set output_name=%only_name%

ffmpeg -i %file_name% -c:a aac -ab 320k -c:v h264_qsv -preset veryslow -look_ahead 1 -look_ahead_depth 60 -look_ahead_downsampling 3 -vb 7.5M -c:s mov_text -strict -2 -y %out_name%