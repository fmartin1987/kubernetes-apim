kubectl delete configmap apim-store-bin
kubectl delete configmap apim-store-conf
kubectl delete configmap apim-store-identity
kubectl delete configmap apim-store-axis2
kubectl delete configmap apim-store-datasources
kubectl delete configmap apim-store-tomcat

kubectl delete -f apim-store/wso2apim-store-volume-claim-kubernetes.yaml

kubectl delete -f apim-store/wso2apim-store-local-service.yaml
kubectl delete -f apim-store/wso2apim-store-service.yaml

kubectl delete -f apim-store/wso2apim-store-deployment.yaml
