@echo off
PowerShell -Command "Start-Process PowerShell -ArgumentList '-ExecutionPolicy Bypass -File \"C:\Users\user\Downloads\Limpar-Temporarios.ps1\"' -Verb RunAs"
