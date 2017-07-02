# mongoDB for Mac

## Step 1

```bash
# ~/.zshrc or ~/.bashrc
export PATH=<mongodb-install-directory>/bin:$PATH
```

## Step 2

```bash
# create folder
mkdir mongodb_simple
cd mongodb_simple
mkdir log
mkdir data
mkdir conf
```

## Step 3

```bash
cd conf
# create mongod.conf and edit
vi mongod.conf
    port = 11223
    dbpath = data
    logpath = log/mongod.log
    fork = true
    :wq
```

## Step 4

```bash
# waiting until server is ready for connections
mongod --config conf/mongod.conf
# connect
mongo 127.0.0.1:11223/test
```
