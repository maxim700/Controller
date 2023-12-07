@ECHO OFF
"C:\Program Files (x86)\Atmel\AVR Tools\AvrAssembler2\avrasm2.exe" -S "D:\AVRProgs\HeatTest\labels.tmp" -fI -W+ie -o "D:\AVRProgs\HeatTest\HeatTest.hex" -d "D:\AVRProgs\HeatTest\HeatTest.obj" -e "D:\AVRProgs\HeatTest\HeatTest.eep" -m "D:\AVRProgs\HeatTest\HeatTest.map" "D:\AVRProgs\HeatTest\HeatTest.asm"
