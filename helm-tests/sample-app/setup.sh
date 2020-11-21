#Install the original chart
helm install  phoenix-template .

#Install Reloader Operator
helm repo add stakater https://stakater.github.io/stakater-charts
helm repo update
helm install stakater-reloader stakater/reloader --set reloader.watchGlobally=false --namespace default

#KUBEDOG rollout tracking
echo '{"Deployments": [{"ResourceName": "fraud-phoenix-service","Namespace": "d-fraud-rulengine-fd-987"}]}' | kubedog multitrack

# KUBEDOG install to Linux
curl -L https://dl.bintray.com/flant/kubedog/v0.3.4/kubedog-linux-amd64-v0.3.4 -o ./kubedog
chmod +x ./kubedog