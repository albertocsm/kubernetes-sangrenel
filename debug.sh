#/bin/bash

kubectl -n kafka delete deploy sangrenel
kubectl -n kafka create -f deploy.yaml
kubectl -n kafka get pods
sleep 3
kubectl -n kafka logs -f "$(kubectl -n kafka get pod | grep 'sangrenel' | awk '{print $1}' | head -1)"
