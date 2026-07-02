@echo off
setlocal

cd /d "%~dp0"

set /p COMMIT_MSG="Commit Message: "

if "%COMMIT_MSG%"=="" (
    echo Error: Commit message cannot be empty.
    exit /b 1
)

git add .
if errorlevel 1 exit /b 1

git commit -m "%COMMIT_MSG%"
if errorlevel 1 exit /b 1

git push
if errorlevel 1 exit /b 1

echo Done.
