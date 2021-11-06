@echo off
set /p extension="Enter File Extension To Search: "
@echo off
set driveList=a b c d e f g h i j k l m n o p q r s t u v w x y z
(for %%a in (%driveList%) do (
  if exist "%%a:\" (
    echo ---- Searching the files with extension *.%extension% in "%%a:" drive ----
    CD /D %%a:
    dir /S *.%extension%
  )
))
pause
