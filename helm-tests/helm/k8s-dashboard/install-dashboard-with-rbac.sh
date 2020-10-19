#Get the latest STD resources deployed
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.0.4/aio/deploy/recommended.yaml
#Enforce RBAC
kubectl apply -f dashboard-adminuser.yaml
kubectl apply -f dashboard-cluster-role-binding.yaml