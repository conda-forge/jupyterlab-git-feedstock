"%PYTHON%" -m pip install . --no-deps --ignore-installed -vvv || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%

:: Shared file not to be included.
del /Q "%PREFIX%\share\jupyter\lab\settings\build_config.json" || EXIT /B 1
IF %ERRORLEVEL% NEQ 0 EXIT /B %ERRORLEVEL%
