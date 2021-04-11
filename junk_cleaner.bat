@echo off

title Cleaner
color 0a

echo ========================================================================
echo ========================================================================
echo          $$$$$$  $    $  $$$$$$  $$$$$$  $$$$$$                       
echo          $       $    $  $    $  $       $    $                       
echo          $$$$$$  $    $  $$$$$$  $$$$$$  $$$$$$                       
echo               $  $    $  $       $       $ $$                         
echo          $$$$$$  $$$$$$  $       $$$$$$  $  $$$                        
echo ------------------------------------------------------------------------                                                                     
echo    $$$$$$$  $      $$$$$$  $$$$$$  $$   $  $$$$$$  $$$$$$             
echo    $        $      $       $$  $$  $ $  $  $       $    $             
echo    $        $      $$$$$$  $$$$$$  $  $ $  $$$$$$  $$$$$$             
echo    $        $      $       $    $  $   $$  $       $ $$               
echo    $$$$$$$  $$$$$$ $$$$$$  $    $  $   $$  $$$$$$  $ $$$$             
echo ========================================================================
echo ========================================================================
echo Starting...PLEASE WAIT

if not "%1"=="am_admin" (powershell start -verb runas '%0' am_admin & exit /b)

del /s /f /q C:\Windows\Temp\*.*
rd /s /q C:\Windows\Temp
md C:\Windows\Temp

del /s /f /q C:\Windows\Prefetch
del /s /f /q %temp%\*.*
rd /s /q %temp%
md /s /q %temp%

rd /s /q C:\Windows\tempor~1
rd /s /q C:\Windows\temp
rd /s /q C:\Windows\tmp
rd /s /q C:\Windows\ff*.tmp
rd /s /q C:\Windows\prefetch
rd /s /q C:\Windows\history
rd /s /q C:\Windows\cookies
rd /s /q C:\Windows\recent
rd /s /q C:\Windows\spool\printers

cls
echo DONE
pause