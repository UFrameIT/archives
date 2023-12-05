@REM when editing, reflect changes in `update.sh`, too!

@REM warn before deleting uncommitted changes
@choice /C YN /M "This will delete all your uncommitted changes, do you want to continue"
if errorlevel 2 exit /B
git submodule foreach git clean -f
git submodule foreach git reset --hard
git pull
@REM init submodules in case they haven't been cloned yet
@REM and update them to the latest commit
git submodule update --init --remote

@REM git submodule foreach git checkout devel
@REM git submodule foreach git pull

PAUSE