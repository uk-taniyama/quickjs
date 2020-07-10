@echo off

cd /D "%~dp0"

set ROOT_DIR=%~dp0

endlocal

set PATH=%ROOT_DIR%\cmake\bin;C:MinGW\bin;%ROOT_DIR%ninja;%PATH%

call download-tools.bat

mkdir build 2> NUL
cd build

cmake -DCMAKE_BUILD_TYPE=Release .. -GNinja
ninja