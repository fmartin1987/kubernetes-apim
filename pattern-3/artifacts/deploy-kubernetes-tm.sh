kubectl create configmap apim-tm1-bin --from-file=../confs/apim-tm-1/bin/
kubectl create configmap apim-tm1-conf --from-file=../confs/apim-tm-1/repository/conf/
kubectl create configmap apim-tm1-identity --from-file=../confs/apim-tm-1/repository/conf/identity/

kubectl create configmap apim-tm2-bin --from-file=../confs/apim-tm-2/bin/
kubectl create configmap apim-tm2-conf --from-file=../confs/apim-tm-2/repository/conf/
kubectl create configmap apim-tm2-identity --from-file=../confs/apim-tm-2/repository/conf/identity/

kubectl create -f apim-tm/wso2apim-tm-1-volume-claim-kubernetes.yaml
kubectl create -f apim-tm/wso2apim-tm-2-volume-claim-kubernetes.yaml

kubectl create -f apim-tm/wso2apim-tm-service.yaml
kubectl create -f apim-tm/wso2apim-tm-1-service.yaml
kubectl create -f apim-tm/wso2apim-tm-2-service.yaml

kubectl create -f apim-tm/wso2apim-tm-1-deployment.yaml
sleep 10s
kubectl create -f apim-tm/wso2apim-tm-2-deployment.yaml
