kubectl create configmap apim-store-bin --from-file=../confs/apim-store/bin/
kubectl create configmap apim-store-conf --from-file=../confs/apim-store/repository/conf/
kubectl create configmap apim-store-identity --from-file=../confs/apim-store/repository/conf/identity/
kubectl create configmap apim-store-axis2 --from-file=../confs/apim-store/repository/conf/axis2/
kubectl create configmap apim-store-datasources --from-file=../confs/apim-store/repository/conf/datasources/
kubectl create configmap apim-store-tomcat --from-file=../confs/apim-store/repository/conf/tomcat/

kubectl create -f apim-store/wso2apim-store-volume-claim-kubernetes.yaml

kubectl create -f apim-store/wso2apim-store-local-service.yaml
kubectl create -f apim-store/wso2apim-store-service.yaml

kubectl create -f apim-store/wso2apim-store-deployment.yaml
