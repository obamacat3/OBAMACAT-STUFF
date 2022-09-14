@echo off
color 17
title HaxeFlixel and Git Installation
set action=0
echo Welcome to the HaxeFlixel and Git Language Packs Installation for Friday Night Funkin
echo -------------------------------------------------------------------------------------
echo Developed by: GamerPablito
echo Maded for: Windows
echo Version: 1.0
echo -------------------------------------------------------------------------------------
:mainaction
echo.
echo What do you want to do?
echo.
echo 	[1] Download Git and HaxeFlixel libraries (choose this if you don't have installed them yet)
echo 	[2] Update the Git and Haxeflixel libraries (only if you have them installed already)
echo 	[3] Change your preferenced coding app settings (only if you have then installed already)
echo.
set /p action=Select an option [1-3]: 
if '%action%'=='1' goto download
if '%action%'=='2' goto update
if '%action%'=='3' goto preferenceapp
echo.
echo The current selection is not valid. Please try again with one of the allowed responses.
echo.
pause
goto mainaction
:download
echo -------------------------------------------------------------------------------------
echo.
echo First of all, you have to install the latest version release of Git
echo You will be redirected to the Git page to install it on your PC
echo When you've already installed it, come here again to follow the rest of the procedure
echo.
pause
start chrome https://git-scm.com
echo -------------------------------------------------------------------------------------
echo.
echo Second of all, you have to install Haxe v4.1.5 (this version cuz the latest version doesn't work very well with Git)
echo You will be redirected to the HaxeFlixel page to install it on your PC
echo When you've already installed it, come here again to follow the rest of the procedure
echo.
pause
start chrome https://haxe.org/download/version/4.1.5
echo -------------------------------------------------------------------------------------
echo.
echo Now we'll proceed to install HaxeFlixel and its Git libraries from this console itself so, a bunch of command lines will be executed to download every indispensable libraries
echo You have to wait for a while since you start the installation, so pay attention when it finished.
echo.
pause
echo.
haxelib install lime 7.9.0
haxelib install openfl
haxelib install flixel
haxelib install flixel-tools
haxelib install flixel-ui
haxelib install hscript
haxelib install flixel-addons
haxelib install actuate
echo.
echo Download Successful!
echo.
pause
:update
echo -------------------------------------------------------------------------------------
echo.
echo Now we'll proceed to update the libraries previously installed
echo Don't close this window until the process finish!
echo.
pause
echo.
haxelib run lime setup
haxelib run lime setup flixel
haxelib git linc_luajit https://github.com/nebulazorua/linc_luajit.git
haxelib git hxvm-luajit https://github.com/nebulazorua/hxvm-luajit
haxelib git faxe https://github.com/uhrobots/faxe
haxelib git polymod https://github.com/MasterEric/polymod.git
haxelib git discord_rpc https://github.com/Aidan63/linc_discord-rpc
haxelib git extension-webm https://github.com/KadeDev/extension-webm
lime rebuild extension-webm windows
echo.
echo Update Successful!
echo.
pause
goto ending
:preferenceapp
echo -------------------------------------------------------------------------------------
echo.
echo You're free to choose the program you use normally for coding!
echo If you don't have one yet, go download one of the following and run this file again
echo.
pause
echo.
haxelib run flixel-tools setup
echo.
echo Setup Completed!
echo.
pause
echo.
:ending
echo -------------------------------------------------------------------------------------
echo.
echo Welp, that's all you have to do, now you have the respective languages installed on your PC to start to work in the FNF Source Code, no matter what kind of Engine you use for
echo Thanks for download this tool, and hope it was helpful for ya :)
echo.
pause
exit