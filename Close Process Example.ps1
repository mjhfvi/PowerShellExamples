$ProcessOutlook = Get-Process -Name Outlook -ErrorAction SilentlyContinue

if ($ProcessOutlook) {
  # try gracefully first
  $ProcessOutlook.CloseMainWindow()
  # kill after five seconds
  Sleep 5
  if (!$ProcessOutlook.HasExited) {
    $ProcessOutlook | Stop-Process -Force
  }
}
