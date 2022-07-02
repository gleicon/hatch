
### Experiments with Rust + Kubernetes controllers
code based on https://github.com/ajavageek/rust-operator and https://github.com/whatisaphone/ingress-status-sync plus specifics of colima and kube tags

### Local k8s testing with colima (https://github.com/abiosoft/colima - brew install colima)

colima start --with-kubernetes
kubectl get pods
kubectl create deployment caddy-app --image caddy
kubectl get po
kubectl expose deployment caddy-app --type LoadBalancer --port 80
curl localhost
kubectl get svc
kubectl get pods
kubectl get deployments
docker ps
# colima stop

### build and apply
docker build .
kubectl apply -f ./deploy.yml


### annotate
kubectl annotate deployment caddy-app "sidecar=true"
