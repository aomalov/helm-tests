helm repo add prometheus-community https://prometheus-community.github.io/helm-charts
helm repo add "stable" "https://charts.helm.sh/stable"
helm repo update
#install with helm3 - ignore CRD warnings - looks like everything is OK
helm install k8s-prom  prometheus-community/kube-prometheus-stack
# later try to upgrade with values.yaml - to disable some stuff like alert manager

# change grafana service to NodePort - to work via browser  admin:prom-operator
# navigate to Prometheus using port-forward on the prometheus operated service pod for the port 9090

