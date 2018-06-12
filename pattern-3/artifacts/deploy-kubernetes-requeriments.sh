kubectl create namespace wso2
kubectl create serviceaccount wso2svcacct -n wso2
kubectl config set-context $(kubectl config current-context) --namespace=wso2
