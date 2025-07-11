kubectl apply -f config/config-map.yml
kubectl apply -f config/nodeport.yml
kubectl apply -f config/pv.yml
kubectl apply -f config/pvc.yml
kubectl apply -f config/hpa.yml
kubectl apply -f config/cronjob.yml
kubectl apply -f config/deployment.yml