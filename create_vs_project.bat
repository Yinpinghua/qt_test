call env.bat
qmake -r -tp vc  RenderDesktop.pro

cd ./test
rmdir  debug
rmdir  release

pause
