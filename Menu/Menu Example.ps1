Write-Host "=============  Pick Your Environment  =================="
Write-Host "`t`t`t    '1' for the 1 Servers"
Write-Host "`t`t`t    '2' for the 2 Servers"
Write-Host "`t`t`t    '3' for the 3 Servers"
Write-Host "`t`t`t    'Q'   ---- Quit ----"
Write-Host "========================================================"
$choice = Read-Host "`nEnter Choice"

switch ($choice) {'1'{Write-Host "`nYou have selected a 1 Environment"}
                  '2'{Write-Host "`nYou have selected a 2 Environment"}
                  '3'{Write-Host "`nYou have selected a 3 Environment"}
                  'Q'{Return}
}