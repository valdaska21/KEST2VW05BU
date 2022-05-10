$gogn = Import-Csv C:\Users\SetupUser\Desktop\notendur.csv
foreach($lina in $gogn) {
    New-LocalUser $lina.notendanafn -FullName $lina.nafn -NoPassword
    Add-LocalGroupMember -Group $lina.hopur -Member $lina.notendanafn
    Add-LocalGroupMember -Group $lina.allirhopur -Member $lina.notendanafn
    Add-LocalGroupMember -Group $lina.userhopur -Member $lina.notendanafn
}