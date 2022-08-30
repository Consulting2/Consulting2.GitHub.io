echo Release:Delete Old

cd C:\HP-Release\Library
C:
rmdir C:\HP-Release\Library\docs /s/q

echo Release:Copy Start

xcopy C:\HP-compiling\pelican\test\output\  C:\HP-Release\Library\docs\ /E /F
copy C:\HP-Release\Library\CNAME C:\HP-Release\Library\docs\CNAME 

echo Release:Copy End
pause