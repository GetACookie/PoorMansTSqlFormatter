
"c:\Program Files\Microsoft\ILMerge\ILMerge.exe" /t:winexe /out:%1SqlFormatterWinformsTemp.exe %1PoorMansTSqlFormatterDemo.exe %1PoorMansTSqlFormatterLib.dll %1LinqBridge.dll %1es\PoorMansTSqlFormatterDemo.resources.dll
IF %ERRORLEVEL% NEQ 0 GOTO END

"c:\Program Files\Microsoft\ILMerge\ILMerge.exe" /t:winexe /out:%1SqlFormatterWinforms.exe %1SqlFormatterWinformsTemp.exe %1fr\PoorMansTSqlFormatterDemo.resources.dll
IF %ERRORLEVEL% NEQ 0 GOTO END

del %1LinqBridge.dll
del %1PoorMansTSqlFormatterLib.dll
del %1PoorMansTSqlFormatterLib.pdb
del %1PoorMansTSqlFormatterDemo.exe
del %1PoorMansTSqlFormatterDemo.pdb
del %1SqlFormatterWinformsTemp.exe
del %1SqlFormatterWinformsTemp.pdb
del %1es\*.* /Q
del %1fr\*.* /Q
:END