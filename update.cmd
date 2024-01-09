@REM when editing, reflect changes in `update.sh`, too!

@REM warn before deleting uncommitted changes
@choice /C YN /M "This will delete all your uncommitted changes and update to the version that is committed in the archives repository, do you want to continue"
if errorlevel 2 exit /B
./clean.cmd
git pull
@REM init submodules in case they haven't been cloned yet
@REM and update them to the version that is committed in the archives repository
git submodule update --init
./clean.cmd

@REM git submodule foreach git checkout devel
@REM git submodule foreach git pull

PAUSE