$urlImagen = "https://i.ibb.co/kgNB08M/minecraft-uhdpaper-com-hd-8-2239.jpg"
$nombreImagen = "wallpoceado.jpg"
$rutaGuardado = (Get-Location).Path + "\" + $nombreImagen

Invoke-WebRequest -Uri $urlImagen -OutFile $rutaGuardado
Set-ItemProperty -path 'HKCU:\Control Panel\Desktop\' -name Wallpaper -value $rutaGuardado
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
Write-Host "Fondo de pantalla cambiado exitosamente."
