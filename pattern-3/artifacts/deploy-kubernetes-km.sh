kubectl create configmap apim-km-bin --from-file=../confs/apim-km/bin/
kubectl create configmap apim-km-conf --from-file=../confs/apim-km/repository/conf/
kubectl create configmap apim-km-identity --from-file=../confs/apim-km/repository/conf/identity/
kubectl create configmap apim-km-axis2 --from-file=../confs/apim-km/repository/conf/axis2/
kubectl create configmap apim-km-datasources --from-file=../confs/apim-km/repository/conf/datasources/
kubectl create configmap apim-km-tomcat --from-file=../confs/apim-km/repository/conf/tomcat/

kubectl create -f apim-km/wso2apim-km-service.yaml
kubectl create -f apim-km/wso2apim-key-manager-service.yaml

kubectl create -f apim-km/wso2apim-km-deployment.yaml
