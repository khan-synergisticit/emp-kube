# !/bin/bash

kubectl apply  -n default -f emp-backend-deployment.yaml,emp-backend-service.yaml,emp-backend-cm0-configmap.yaml

