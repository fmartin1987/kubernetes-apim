kubectl create configmap apim-gw-manager-worker-bin --from-file=../confs/apim-gw-manager-worker/bin/
kubectl create configmap apim-gw-manager-worker-conf --from-file=../confs/apim-gw-manager-worker/repository/conf/
kubectl create configmap apim-gw-manager-worker-identity --from-file=../confs/apim-gw-manager-worker/repository/conf/identity/
kubectl create configmap apim-gw-manager-worker-axis2 --from-file=../confs/apim-gw-manager-worker/repository/conf/axis2/
kubectl create configmap apim-gw-manager-worker-datasources --from-file=../confs/apim-gw-manager-worker/repository/conf/datasources/
kubectl create configmap apim-gw-manager-worker-tomcat --from-file=../confs/apim-gw-manager-worker/repository/conf/tomcat/

kubectl create -f apim-gateway/wso2apim-mgt-volume-claim-kubernetes.yaml

kubectl create -f apim-gateway/wso2apim-sv-service.yaml
kubectl create -f apim-gateway/wso2apim-pt-service.yaml
kubectl create -f apim-gateway/wso2apim-manager-worker-service.yaml

kubectl create -f apim-gateway/wso2apim-manager-worker-deployment.yaml

kubectl create -f ingresses/wso2apim-ingress.yaml
