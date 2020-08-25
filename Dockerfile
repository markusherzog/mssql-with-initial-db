FROM mcr.microsoft.com/mssql/server:2017-CU21-ubuntu-16.04
COPY run.sh setup-database.sh setup-database.sql /tmp/
RUN chmod +x /tmp/run.sh /tmp/setup-database.sh
ENTRYPOINT ["/tmp/run.sh"]
