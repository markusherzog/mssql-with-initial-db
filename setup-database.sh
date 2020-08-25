#!/bin/bash

MAX_TRIES=5
COUNT=0

string="Service Broker manager has started"

tail -n0 -F /tmp/server.log | \
while read LINE
do
  if echo "$LINE" | grep "$string" 1>/dev/null 2>&1
  then
    /opt/mssql-tools/bin/sqlcmd -U $MSSQL_SA_USER -P $MSSQL_SA_PASSWORD -i /tmp/setup-database.sql
  fi
done
