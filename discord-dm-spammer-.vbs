Objetivo = InputBox("Escribe el nombre de la persona / Servidor" & vbNewLine & vbNewLine &  "No uses Caracteres raros", "Discord Mass DM")
Mensaje = InputBox("Que mensaje quieres enviar?","Discord Mass DM")
T = InputBox("Cuantas veces quieres enviar el mensaje?" & vbNewLine & vbNewLine & "Escribe un numero entero","Discord Mass DM")
If MsgBox("Quieres continuar?" & vbNewLine & vbNewLine & "Presiona NO para cancelar!", vbYesNo + vbQuestion + vbSystemModal, "Discord Mass DM") = vbYes Then
 
	Set WshShell = WScript.CreateObject("WScript.Shell")
	Return = WshShell.Run("https://discord.com/app", 1)
 
	If MsgBox("Esta Discord Web abierto?" & vbNewLine & vbNewLine & "Espera a que la pagina cargue!" & vbNewLine & vbNewLine & "Presiona NO para cancelar!", vbYesNo + vbQuestion + vbSystemModal, "Discord Mass DM") = vbYes Then
 
	MsgBox "No toques el navegador durante el Mass Dm, solo presiona al dm del Usuario / servidor y espera." & vbNewLine & vbNewLine & "Empezando en 10 segundos.", 1024 + vbSystemModal, "Preparando Mass DM"
 
    WScript.Sleep 50
	WshShell.SendKeys "{TAB}"
 
    WScript.Sleep 50
	WshShell.SendKeys Objetivo
	WScript.Sleep 5000
	WshShell.SendKeys "{ENTER}"
	WScript.Sleep 5000
 
	For i = 0 to T
	WScript.Sleep 5
	WshShell.SendKeys Mensaje
	WScript.Sleep 5
	WshShell.SendKeys "{ENTER}"
	Next
 
	WScript.Sleep 3000
	MsgBox "Mass DM al " + Objetivo + " Se hizo con exito, hecho por $k1x", 1024 + vbSystemModal, "Mass DM Hecho"
 
	Else
	MsgBox "El Mass Dm fue cancelado con exito", vbSystemModal, "Mass DM Cancelado"
	End If
Else
MsgBox "El Mass DM fue cancelado con exito", vbSystemModal, "Mass DM Cancelado"
End If
