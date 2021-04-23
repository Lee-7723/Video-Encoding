set all_url=%1
set url="%all_url:~19%
mpv --http-header-fields="referer:https://www.aliyundrive.com/","user-agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/90.0.4430.72 Safari/537.36 Edg/90.0.818.39" %url%
pause