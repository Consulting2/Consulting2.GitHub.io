set "Ymd=%date:~,4%%date:~5,2%%date:~8,2%"

echo Backup:del

rmdir S:\HP-Archive\Library_%ymd% /S /Q

md S:\HP-Archive\Library_%ymd%

xcopy S:\HP-Release\Library\site\ S:\HP-Archive\Library_%ymd%\ /E /F

copy S:\HP-Release\Library\CNAME S:\HP-Archive\Library_%ymd%\CNAME 

echo Backup:OK

pause