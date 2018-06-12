kubectl create configmap apim-publisher-bin --from-file=../confs/apim-publisher/bin/
kubectl create configmap apim-publisher-conf --from-file=../confs/apim-publisher/repository/conf/
kubectl create configmap apim-publisher-identity --from-file=../confs/apim-publisher/repository/conf/identity/
kubectl create configmap apim-publisher-axis2 --from-file=../confs/apim-publisher/repository/conf/axis2/
kubectl create configmap apim-publisher-datasources --from-file=../confs/apim-publisher/repository/conf/datasources/
kubectl create configmap apim-publisher-tomcat --from-file=../confs/apim-publisher/repository/conf/tomcat/

kubectl create -f apim-publisher/wso2apim-publisher-volume-claim-kubernetes.yaml

kubectl create -f apim-publisher/wso2apim-publisher-local-service.yaml
kubectl create -f apim-publisher/wso2apim-publisher-service.yaml

kubectl create -f apim-publisher/wso2apim-publisher-deployment.yaml

kubectl create -f routes/wso2apim-publisher-route.yaml
