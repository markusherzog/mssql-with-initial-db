#!/bin/bash
/tmp/setup-database.sh &
/opt/mssql/bin/sqlservr | tee /tmp/server.log
