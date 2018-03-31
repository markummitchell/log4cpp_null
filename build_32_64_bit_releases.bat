rem ****************
rem * 32 bit build *
rem ****************
call vcvarsall x86

if not exist lib32 mkdir lib32
if not exist lib32d mkdir lib32d

qmake log4cpp.pro CONFIG+="release dll"
nmake clean
nmake
qmake log4cpp.pro CONFIG+="release staticlib"
nmake clean
nmake
copy release\lib\log4cpp.* lib32\lib

qmake log4cpp.pro CONFIG+="debug dll"
nmake clean
nmake
qmake log4cpp.pro CONFIG+="debug staticlib"
nmake clean
nmake
copy debug\lib\log4cpp.* lib32d\lib

rem ****************
rem * 64 bit build *
rem ****************
call vcvarsall x64

if not exist lib64 mkdir lib64
if not exist lib64d mkdir lib64d

qmake log4cpp.pro CONFIG+="release dll"
nmake clean
nmake
qmake log4cpp.pro CONFIG+="release staticlib"
nmake
copy release\lib\log4cpp.* lib64\lib

qmake log4cpp.pro CONFIG+="debug dll"
nmake clean
nmake
qmake log4cpp.pro CONFIG+="debug staticlib"
nmake
copy debug\lib\log4cpp.* lib64d\lib

rem *****************************
rem * Both 32 and 64 bit builds *
rem *****************************
7z a log4cpp.zip lib32 lib64 include
