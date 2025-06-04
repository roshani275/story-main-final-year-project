@echo off

title Running
cd /d C:\Users\Roshani\Downloads\story-main final year project\story-main\backend
start "backend" cmd /k "python app.py"

cd /d  C:\Users\Roshani\Downloads\story-main final year project\story-main\frontend
start "frontend" cmd /k "npm start"

timeout /t 5 /nobreak >nul

:loop
ollama run phi "Generate Text"
goto loop
