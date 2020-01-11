@echo off

SET Backup_dir=C:\Users\Cyber\Desktop\
SET Backup_list=C:\Users\Cyber\Desktop\testfile.txt
SET dt=%date%_%time:~0,2%_%time:~3,2%

IF NOT EXIST %Backup_dir%\backup-%dt% ( mkdir %Backup_dir%\backup-%dt%)

FOR /f "tokens=*" %%a in (%Backup_list%) do ( xcopy %%a %Backup_dir%\backup-%dt% )

FORFILES /P %Backup_dir% /S /D -10 /C "cmd /c IF @isdir == TRUE rd /S /Q @path"

PAUSE
