Dim objStepDefFile
Sub RegExMatch()

strFeatureFilePath = "C:\Users\PC\Desktop\Github\vbs\features\simple.feature"
strStepDefFilePath = "C:\Users\PC\Desktop\Github\vbs\StepDef.txt"
Set objFSO = CreateObject("Scripting.FileSystemObject")

Set objStepDefFile = objFSO.CreateTextFile(strStepDefFilePath, True)
Set objFeatureFile = objFSO.OpenTextFile(strFeatureFilePath)

arrFileContent = Split(objFeatureFile.readAll(), vbCrLf)

For Each strLine In arrFileContent
    strLine = removeUnwantedSpaces(strLine)
    If strLine <> "" Then
        strTempLine = Replace(strLine, " ", "")
        If Left(UCase(strTempLine), 8) = "FEATURE:" Then
            Debug.Print "FEATURE:" & strLine
        ElseIf Left(UCase(strTempLine), 9) = "SCENARIO:" Then
            Debug.Print "SCENARIO:" & strLine
        ElseIf Left(UCase(strTempLine), 11) = "BACKGROUND:" Then
            Debug.Print "BACKGROUND:" & strLine
        ElseIf Left(UCase(strTempLine), 17) = "SCENARIO OUTLINE:" Then
            Debug.Print "SCENARIO OUTLINE:" & strLine
        ElseIf Left(UCase(strTempLine), 5) = "GIVEN" Then
            Debug.Print "GIVEN:" & strLine
        ElseIf Left(UCase(strTempLine), 4) = "THEN" Then
            Debug.Print "THEN:" & strLine
        ElseIf Left(UCase(strTempLine), 4) = "WHEN" Then
            Debug.Print "WHEN:" & strLine
        ElseIf Left(UCase(strTempLine), 3) = "AND" Then
            Debug.Print "AND:" & strLine
        ElseIf Left(UCase(strTempLine), 3) = "BUT" Then
            Debug.Print "BUT:" & strLine
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

Function removeUnwantedSpaces(strLine)

    Set objRegExp = CreateObject("Vbscript.RegExp")
    objRegExp.IgnoreCase = True
    objRegExp.Global = True
    objRegExp.Pattern = "\s+"
    ReplacedText = objRegExp.Replace(strLine, " ")
    removeUnwantedSpaces = Trim(ReplacedText)
    
End Function



