; In case of emergency: ^!RButton
^!RButton::
  TrayTip, EMERGENCY!, ENABLE MOUSE UNDUMBIFIER!, 1, 3
  undumbifier := 1
  MouseGetPos, undumbifierX, undumbifierY
  SetTimer, Undumbify, 40
Return

^!Up::
  If undumbifier {
    undumbifierY := undumbifierY - 8
  }
Return

^!Down::
  If undumbifier {
    undumbifierY := undumbifierY + 8
  }
Return

^!Left::
  If undumbifier {
    undumbifierX := undumbifierX - 8
  }
Return

^!Right::
  If undumbifier {
    undumbifierX := undumbifierX + 8
  }
Return

; When crisis averted: ^!LButton
^!LButton::
  TrayTip, Crisis averted., Disable mouse undumbifier., 1, 1
  undumbifier := 0
  SetTimer, Undumbify, Off
Return

Undumbify:
  MouseMove, undumbifierX, undumbifierY, 0
Return