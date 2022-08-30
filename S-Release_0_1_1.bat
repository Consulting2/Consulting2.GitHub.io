echo Release:Delete Old

cd S:\HP-Release\Library
s:
rmdir S:\HP-Release\Library\docs /s/q

echo Release:Copy Start

xcopy S:\HP-compiling\pelican\test\output\  S:\HP-Release\Library\docs\ /E /F
copy S:\HP-Release\Library\CNAME S:\HP-Release\Library\docs\CNAME 

echo Release:Copy End
pause