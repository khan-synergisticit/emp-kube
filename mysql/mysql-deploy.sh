# !/bin/bash

kubectl apply  -n default -f mysql-data-persistentvolumeclaim.yaml,mysqldb-deployment.yaml,mysqldb-service.yaml 

