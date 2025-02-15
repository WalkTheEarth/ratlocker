# RatLocker  

**Disclaimer:** This project is for educational and research purposes only. Do not use it for malicious intent.  

## Overview  
RatLocker is a PowerShell-based proof-of-concept ransomware that simulates basic file renaming and wallpaper changes. It does not perform actual encryption but demonstrates the workflow of ransomware-like behavior.  

## Features  
- Replaces the desktop wallpaper with a custom image.  
- Renames files in key directories (`Desktop`, `Pictures`, `Music`, `Videos`, `Downloads`) by appending `.ratl0ck3r`.  
- Drops a decryption script (`Decryption.ps1`) on the desktop.  

## Usage  
Run the script in a PowerShell terminal. Admin privileges are not required. 
OR use our duckyscript

## Notes  
- The script does not encrypt or delete files—only renames them.  
- The decryption script should handle renaming files back to their original state.  
