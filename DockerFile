# 使用 Microsoft 的 SQL Server 2019 映像作為基礎映像
FROM mcr.microsoft.com/mssql/server:2019-latest

# 設定環境變數以接受 EULA 並設定 SA 密碼
ENV ACCEPT_EULA=Y
ENV MSSQL_SA_PASSWORD=YourStrong!Passw0rd

# 建立目錄以存放初始化腳本
RUN mkdir -p /usr/config

# 複製本地的 SQL 腳本到容器內的指定目錄
COPY ./init.sql /usr/config/init.sql

# 設定容器啟動時執行的命令
CMD /bin/bash -c "/opt/mssql/bin/sqlservr & /usr/config/init.sql"
