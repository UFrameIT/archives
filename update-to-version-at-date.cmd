@REM ./update-to-version-at-date.sh 3 month ago
@REM ./update-to-version-at-date.sh 22.12.2023 12:32
git submodule foreach "git log --all --oneline --format=format:%%H --before '%*'  | head -n1 | xargs git checkout"
