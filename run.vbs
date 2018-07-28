Dim objStepDefFile
Sub RegExMatch()

strFeatureFilePath = "F:\BDD_UFT\Features\test1.feature"
strStepDefFilePath = "F:\BDD_UFT\StepDefinitions\StepDef.txt"
Set objFSO = CreateObject("Scripting.FileSystemObject")


'Set objRegExp = CreateObject("Vbscript.RegExp")
'objRegExp.IgnoreCase = True
'objRegExp.Global = True
'objRegExp.Pattern = "^\s*(Then|When)"
'Set myMatches = objRegExp.Execute(" When I know that my parser is working")
'For Each myMatch In myMatches
'  Debug.Print myMatch.Value
'Next
Set objStepDefFile = objFSO.CreateTextFile(strStepDefFilePath, True)
Set objFeatureFile = objFSO.OpenTextFile(strFeatureFilePath)

arrFileContent = Split(objFeatureFile.readAll(), vbCrLf)

For Each strLine In arrFileContent
    strLine = Replace(Trim(strLine), vbTab, "")
    If strLine <> "" Then
        arrWord = Split(strLine, " ", 2, 1)
        If InStr(1, arrWord(0), "Feature:", 1) <> 0 Then
            Debug.Print arrWord(1)
        ElseIf InStr(1, arrWord(0), "Scenario:", 1) <> 0 Then
        ElseIf InStr(1, arrWord(0), "Background:", 1) <> 0 Then
        'ElseIf InStr(1, arrWord(0), "Scenario Outline:", 1) <> 0 Then
        ElseIf InStr(1, arrWord(0), "Given", 1) <> 0 Then
            Call GenerateFunction(arrWord(1))
            Debug.Print arrWord(1)
        ElseIf InStr(1, arrWord(0), "Then", 1) <> 0 Then
        ElseIf InStr(1, arrWord(0), "When", 1) <> 0 Then
        ElseIf InStr(1, arrWord(0), "And", 1) <> 0 Then
        ElseIf InStr(1, arrWord(0), "But", 1) <> 0 Then
        End If
       
    End If
Next

objStepDefFile.Close

End Sub

Function GenerateFunction(strLine)

    strLine = Replace(strLine, " ", "_")
    strFuncSignature = "Function " & strLine & "()" & vbNewLine & vbTab & "" & vbNewLine & "End Function"
    objStepDefFile.WriteLine
    objStepDefFile.WriteLine (strFuncSignature)
    
End Function

