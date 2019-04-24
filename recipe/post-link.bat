@echo off

"%PREFIX%\Scripts\jupyter.exe" serverextension enable jupyterlab_git--py --sys-prefix > "%PREFIX%\.messages.txt" 2>&1 && if errorlevel 1 exit 1
