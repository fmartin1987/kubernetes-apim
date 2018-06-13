kubectl delete configmap apim-publisher-bin
kubectl delete configmap apim-publisher-conf
kubectl delete configmap apim-publisher-identity
kubectl delete configmap apim-publisher-axis2
kubectl delete configmap apim-publisher-datasources
kubectl delete configmap apim-publisher-tomcat

kubectl delete -f apim-publisher/wso2apim-publisher-volume-claim-kubernetes.yaml

kubectl delete -f apim-publisher/wso2apim-publisher-local-service.yaml
kubectl delete -f apim-publisher/wso2apim-publisher-service.yaml

kubectl delete -f apim-publisher/wso2apim-publisher-deployment.yaml
