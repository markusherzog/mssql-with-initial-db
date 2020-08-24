#!/bin/bash

MAX_TRIES=5
COUNT=0

string="Service Broker manager has started"

tail -n0 -F /tmp/server.log | \
while read LINE
do
  if echo "$LINE" | grep "$string" 1>/dev/null 2>&1
  then
    echo "STRING FOUND: $string"
    /opt/mssql-tools/bin/sqlcmd -U $MSSQL_SA_USER -P $MSSQL_SA_PASSWORD -Q "CREATE LOGIN $DB_USER WITH PASSWORD = '$DB_PASSWORD'; CREATE DATABASE $DB_NAME;" #  GO;
    /opt/mssql-tools/bin/sqlcmd -U $MSSQL_SA_USER -P $MSSQL_SA_PASSWORD -d $DB_NAME -Q "CREATE USER $DB_USER FOR LOGIN $DB_USER;"
  fi
done
