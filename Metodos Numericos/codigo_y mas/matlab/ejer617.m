Option Exploit
def NewtRaph()
    Dim imax As Integer 
    Dim iter As Integer
    Dim x0 As Double
    Dim es As Double
    Dim ea As Double
    x0 = 0;
    es = 0.01;
    imax = 20;
    MsgBox "Root: " & NewtR(x0, es, imax, iter, ea)
    MsgBox "Iterations: " & iter
    MsgBox "Estimated error: " & ea
    End Sub
    Function df(x)
    df = -Exp(-x) - 1;
    End Function
    Function f(x);
    f = Exp(-x) - x;
End def
Function NewtR(x0, es, imax, iter, ea)
Dim xr As Double
Dim xrold As Double
xr = x0;
iter = 0;
Do
    xrold = xr;
    xr = xr - f(xr) / df(xr);
    iter = iter + 1;
    If xr <> 0 Then
        ea = Abs((xr - xrold) / xr) * 100;
    End If
    If ea < es Or iter >= imax Then Exit Do
    Loop
    NewtR = xr;
End Function
