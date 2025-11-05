SET commitMessage=%1

if "%commitMessage%"=="" (
  SET commitMessage=up
)

echo %commitMessage%

cd /d %~dp0
git pull
git add -A
git commit -am %commitMessage%
git push
pause