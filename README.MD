# MSSQL Server 2017 (extended)

This image is based on the SQL Server 2017 image. It only adds a script that creates an initial database and user. This script is run when the image is started.



## Build and run locally

### Step 1
```
cp docker-compose.example.yml docker-compose.yml
```

### Step 2
Edit docker-compose.yml until you like it


### Step 3
```
docker-compose up --force-recreate --build
```

# TODO
* check if database exists and then do not create it again
