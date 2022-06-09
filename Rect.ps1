$a = Get-Content -Path 'path' -Raw
$a = $a.ToLower() -replace "\W" | where {$_ -ne ""} 
$a = $a.toCharArray()
$r = [math]::Sqrt($a.Length)
$r = [int]$r
$k = 0
$t = ""
$b = $t | Measure-Object -Line


foreach ($c in $a){
	if ($b.lines -eq $r)
	{
		break
	}
	else 
	{
		$k+=1
		$t+=$c

		if ($k -ge $r)
		{
			$t+="`n"
			$k-=$r
			$b.lines+=1
		}
	}
}
$t