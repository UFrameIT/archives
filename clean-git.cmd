@REM warn bevore deleting all your source code changes!
@choice /C YN /M "This will delete all your uncommitted changes (if you only want to removes build artefacts use ./clean.sh), do you want to continue"
if errorlevel 2 exit /B

git submodule foreach "git clean -fdx ; git reset --hard"
