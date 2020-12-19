@echo off

dir /b "C:\Users\ellio\OneDrive\Dokument\Mina Saker\Minecraft\Projects\Christmas pack\assets\minecraft\textures\item\light_string*.png">stuff.txt
set skiup=0

set /p select=Enter regular, hanging or tree:
if %select%==regular goto loop1
if %select%==hanging goto loop2
if %select%==tree goto loop3

:loop1
set /a skiup=%skiup%+1
for /f "skip=%skiup% tokens=1 delims=." %%a in (stuff.txt) do (
  set stuff=%%a& goto continue
)
:continue
if exist %stuff%.json goto loop1
echo {>>"%stuff%.json"
echo    "parent": "e_christmas:block/light_string_white",>>"%stuff%.json"
echo    "textures": {>>"%stuff%.json"
echo        "0": "item/%stuff%",>>"%stuff%.json"
echo 		"particle": "item/%stuff%">>"%stuff%.json"
echo    }>>"%stuff%.json"
echo }>>"%stuff%.json"
if not defined stuff goto end
goto loop1



:loop2
set /a skiup=%skiup%+1
for /f "skip=%skiup% tokens=1 delims=." %%a in (stuff.txt) do (
  set stuff=%%a& goto continue
)
:continue
if exist %stuff%_hanging.json goto loop2
echo {>>"%stuff%_hanging.json"
echo    "parent": "e_christmas:block/light_string_white_hanging",>>"%stuff%_hanging.json"
echo    "textures": {>>"%stuff%_hanging.json"
echo        "0": "item/%stuff%",>>"%stuff%_hanging.json"
echo 		"particle": "item/%stuff%">>"%stuff%_hanging.json"
echo    }>>"%stuff%_hanging.json"
echo }>>"%stuff%_hanging.json"
if not defined stuff goto end
goto loop2



:loop3
set /a skiup=%skiup%+1
for /f "skip=%skiup% tokens=1 delims=." %%a in (stuff.txt) do (
  set stuff=%%a& goto continue
)
:continue
if exist %stuff%_tree.json goto loop3
echo {>>"%stuff%_tree.json"
echo    "parent": "e_christmas:block/light_string_white_tree",>>"%stuff%_tree.json"
echo    "textures": {>>"%stuff%_tree.json"
echo        "0": "item/%stuff%",>>"%stuff%_tree.json"
echo 		"particle": "item/%stuff%">>"%stuff%_tree.json"
echo    }>>"%stuff%_tree.json"
echo }>>"%stuff%_tree.json"
if not defined stuff goto end
goto loop3
:end