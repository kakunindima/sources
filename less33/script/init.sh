#!/bin/bash

cat > /tmp/init.js <<EOF
var dbPass = "mysql"
var clusterName = "TestCluster"
try {
  shell.connect('root@node1:3306', dbPass)
  var cluster = dba.createCluster(clusterName);
  cluster.addInstance({user: "root", host: "node2", password: dbPass});
  cluster.addInstance({user: "root", host: "node3", password: dbPass});
} catch(e) {
  print('\nThe InnoDB cluster could not be created.\n\nError: ' + e.message + '\n');
}
EOF

until (
    mysqlsh --user=${MYSQL_USER} --password=${MYSQL_PASSWORD} --host=${MYSQL_HOST} --port=${MYSQL_PORT} --interactive --file=/tmp/init.js
)
do
    sleep 5
done
