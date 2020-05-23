@echo off
echo below files will be deleted
forfiles /p "d:\test" /s /m *.* /c "cmd /c echo @path"
pause
echo delete above files..
forfiles /p "d:\test" /s /m *.* /d -10 /c "cmd /c del @path"
dir /ad/b/s d:\test\ |sort /r >d:\kill.txt
echo delete all folders contain above files
For /f "tokens=*" %%i in (d:\kill.txt) DO rd "%%i"
del d:\kill.txt
pause