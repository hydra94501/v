@echo off
echo Starting to copy files...
xcopy "E:\workspace\pay-api\out\artifacts\ROOT\WEB-INF\classes\com" "F:\v\api\com\" /E /I /Y
echo Copy completed!
pause