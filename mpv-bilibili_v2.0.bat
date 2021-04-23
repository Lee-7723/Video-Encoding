set all_url=%1
::set url_audio="%all_url:*@=%
for /f "tokens=1* delims=@" %%a in (%all_url%) do (
set url_video=%%a
set url_audio=%%b
)
::set url_video=%url_video:~30%
::set url_video="%all_url:~20%
mpv --http-header-fields="referer:https://www.bilibili.com/","user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.39" "%url_video:~29%" --audio-files="%url_audio%"
pause