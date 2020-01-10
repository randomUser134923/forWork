SET Today=%date%
SET Backup_dir=C:\Users\Cyber\Desktop\backup-%Today%

mkdir C:\Users\Cyber\Desktop\backup-%Today%
xcopy C:\Users\Cyber\Desktop\testText.txt %Backup_dir%\astest.txt

::forfiles /p "%Backup_dir%" /s /m *.* /D -0 /C "cmd /c del @path"
PAUSE
::cmd /k
