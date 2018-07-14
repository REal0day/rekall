TIMEOUT 5
RD /s /q %LOCALAPPDATA%\Temp\mem.tmp
md %LOCALAPPDATA%\Temp\mem.tmp
I:\winpmem-2.1.post4.exe -o %LOCALAPPDATA%\Temp\mem.tmp\%COMPUTERNAME%-%USERNAME%.aff4
TIMEOUT 20
certUtil -hashfile %LOCALAPPDATA%\Temp\mem.tmp\%COMPUTERNAME%-%USERNAME%.aff4 SHA512 > %LOCALAPPDATA%\Temp\mem.tmp\%COMPUTERNAME%-%USERNAME%.SHA512.txt
XCOPY %LOCALAPPDATA%\Temp\mem.tmp I:\mem.tmp\ /s /e
TIMEOUT 60
RD /s /q %LOCALAPPDATA%\Temp\mem.tmp
TIMEOUT 60