set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"

echo Backup:del

rmdir C:\HP-Archive\Library_%ymd% /S /Q

md C:\HP-Archive\Library_%ymd%

xcopy C:\HP-Release\Library\site\ C:\HP-Archive\Library_%ymd%\ /E /F

copy C:\HP-Release\Library\CNAME C:\HP-Archive\Library_%ymd%\CNAME 

echo Backup:OK

pause