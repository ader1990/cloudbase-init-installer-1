mkdir "%SYSTEMROOT%\Setup\Scripts"
sc config cloudbase-init start= demand
echo bcdedit /set {fwbootmgr} DEFAULT {bootmgr} ^&^& sc config cloudbase-init start= auto ^&^& net start cloudbase-init > "%SYSTEMROOT%\Setup\Scripts\SetupComplete.cmd"
