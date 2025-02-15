# RatLocker  

**Disclaimer:** This project is for educational and research purposes only. Do not use it for malicious intent.  

## Overview  
RatLocker is a PowerShell-based proof-of-concept ransomware that simulates file renaming and wallpaper changes. It also includes a USB Rubber Ducky payload for automated execution.  

## Features  
- **File Renaming:** Appends `.ratl0ck3r` to targeted files in `Desktop`, `Pictures`, `Music`, `Videos`, and `Downloads`.  
- **Wallpaper Change:** Replaces the desktop wallpaper with a custom image.  
- **Decryption Script:** Drops a PowerShell script (`Decryption.ps1`) that must be placed in the affected folder to restore file names.  
- **USB Rubber Ducky Payload:** Automates script execution when plugged into a Windows machine.  

## USB Rubber Ducky Payload  
The included Ducky script performs the following:  
1. Opens the Run dialog (`Win + R`).  
2. Enables unrestricted PowerShell execution.  
3. Downloads and executes `Script.ps1` from GitHub.  

## How to Decrypt Files  
1. **Move `Decryption.ps1` into the affected folder** (`Desktop`, `Pictures`, `Music`, `Videos`, or `Downloads`).  
2. Run `Decryption.ps1`.  
3. Enter the decryption password: **`2us0jru04ws@gz@`** (case-sensitive).  
4. The script will rename all `.ratl0ck3r` files back to their original names in that folder.  

## Usage  
### Running the PowerShell Script  
1. Open a PowerShell terminal.  
2. Run `Script.ps1` (Administrator rights not required).  

### Using the USB Rubber Ducky  
1. Flash the script to a USB Rubber Ducky.  
2. Plug it into a target Windows machine.  
3. The payload will automatically execute.  
