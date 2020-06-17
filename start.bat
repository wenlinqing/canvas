
@echo off
C:
CD C:\Program Files\MySQL\MySQL Server 8.0\bin;

set "Y=%date:~,4%"
set "m=%date:~5,2%"
set "d=%date:~8,2%"


if not exist "G:\database Backup\" (mkdir "G:\database Backup\")
rem mysqldump -h localhost  -u root --password=123456 database > "G:\database Backup\database%Y%%m%%d%.sql"

mysqldump --column-statistics=0 -h120.78.72.112  -uroot -pAly?2018 company > "G:\database Backup\company%Y%%m%%d%.sql"


@echo on




