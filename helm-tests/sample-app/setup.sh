#Install the original chart
helm install  phoenix-template .

#Install Reloader Operator
helm repo add stakater https://stakater.github.io/stakater-charts
helm repo update
helm install stakater-reloader stakater/reloader --set reloader.watchGlobally=false --namespace default
