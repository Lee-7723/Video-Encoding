set all_url=%1
::set url_audio="%all_url:*@=%
for /f "tokens=1* delims=@" %%a in (%all_url%) do (
set url_video=%%a
set url_audio=%%b
)
::set url_video=%url_video:~30%
::set url_video="%all_url:~20%
potplayermini64 "%url_video:~29%" /referer=https://www.bilibili.com/"  
pause