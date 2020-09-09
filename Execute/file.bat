@echo OFF
Rem Start wamp
echo Starting wamp
START /d "C:\wamp\" wampmanager.exe
echo wamp started
Rem pull
E:
cd "E:\Workspaces\Java Workspace\Covid-Database"
git pull
echo data pulled
Rem Execute the Java Project
echo execute java
start /d "E:\Workspaces\Java Workspace\Covid-Database\Execute" fillMyDatabase.jar
echo export database

Rem export the database
"C:\wamp\bin\mysql\mysql5.6.17\bin\mysqldump.exe" -u root -p covid > "E:\Workspaces\Java Workspace\Covid-Database\Database\covid.sql"
echo database exported
echo closing
timeout 20
