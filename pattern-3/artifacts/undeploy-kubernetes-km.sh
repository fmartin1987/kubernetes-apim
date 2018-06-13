kubectl delete configmap apim-km-bin
kubectl delete configmap apim-km-conf
kubectl delete configmap apim-km-identity
kubectl delete configmap apim-km-axis2
kubectl delete configmap apim-km-datasources
kubectl delete configmap apim-km-tomcat

kubectl delete -f apim-km/wso2apim-km-service.yaml
kubectl delete -f apim-km/wso2apim-key-manager-service.yaml

kubectl delete -f apim-km/wso2apim-km-deployment.yaml
