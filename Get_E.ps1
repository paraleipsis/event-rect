function Get-E {
Get-EventLog -LogName system -Newest 30 -EntryType Error | where-object {
$_.TimeWritten -ge (Get-Date).AddMonths(-1)
} | out-file path.txt -Append
} 
