#Get the latest STD resources deployed
#wget https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.4/aio/deploy/recommended.yaml
#reapply the templating over the bundle
helm install k8s-dashboard .

#find out the NodePort of the kubernetes-dashboard service - and use the bearer token script to obtain the token