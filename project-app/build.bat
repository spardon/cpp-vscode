@ECHO OFF
SetLocal EnableDelayedExpansion

SET projectName=project-app
SET includeFlags=/Isrc /Iinclude /I..\project\src
SET libFlags=lib\*.lib ..\bin\project\project.lib

SET sourceDirectory=src
SET binDirectory=..\bin\%projectName%
SET intermediateDirectory=..\intermediate\%projectName%

set "cppFiles="
for %%A in (%sourceDirectory%"\*.cpp") do (
  if not "%%~xA"=="" (
    set "cppFiles=!cppFiles! "%%~A""
  )
)

if not exist %binDirectory% mkdir %binDirectory%
if not exist %intermediateDirectory% mkdir %intermediateDirectory%

ECHO Building %projectName%
ECHO Files: %cppFiles%

cl /c /EHsc /Z7 /W4 /Fo%intermediateDirectory%\ %includeFlags% %cppFiles%

set "objFiles="
for %%A in ("%intermediateDirectory%\*.obj") do (
  if not "%%~xA"=="" (
    set "objFiles=!objFiles! "%%~A""
  )
)

ECHO Linking %projectName%
ECHO Object Files: %objFiles%

link %objFiles% %libFlags% /DEBUG:FULL /out:%binDirectory%/%projectName%.exe

exit /b
