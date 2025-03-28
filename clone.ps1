$TGT_DIR="$HOME\.config\wezterm\"
New-Item  -ItemType "Directory" -Path $TGT_DIR -erroraction 'silentlycontinue'
Push-Location $PSScriptRoot
robocopy "." $TGT_DIR /s /e /xd .git .github /xo /im
Pop-Location