[String]$mud = <GameDirectory>
[String]$mods = <ModDirectory>

cd $mud
rm Media -r -fo
New-Item -ItemType directory -Path Media
.\mudrunner.exe
sleep 10

Copy-Item "$mods\*" Media -Recurse
