# !/bin/bash

kubectl apply  -n default -f emp-frontend-deployment.yaml,emp-frontend-service.yaml,emp-frontend-claim1-persistentvolumeclaim.yaml,emp-frontend-cm0-configmap.yaml
