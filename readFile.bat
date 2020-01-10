@Echo Off
SetLocal EnableExtensions DisableDelayedExpansion

Set "srcFile=FileName.txt"
Set "srcTerm=Build:"

For /F "Delims=" %%A In ('FindStr/LIC:"%srcTerm%" "%srcFile%" 2^>Nul') Do (
    Set "_=%%A"
    SetLocal EnableDelayedExpansion
    For /F %%B In ("!_:*%srcTerm%=!") Do Echo=%%B
    EndLocal)

Timeout -1
EndLocal
GoTo :EOF
