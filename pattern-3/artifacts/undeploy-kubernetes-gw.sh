kubectl delete configmap apim-gw-manager-worker-bin
kubectl delete configmap apim-gw-manager-worker-conf
kubectl delete configmap apim-gw-manager-worker-identity
kubectl delete configmap apim-gw-manager-worker-axis2
kubectl delete configmap apim-gw-manager-worker-datasources
kubectl delete configmap apim-gw-manager-worker-tomcat

kubectl delete -f apim-gateway/wso2apim-mgt-volume-claim-kubernetes.yaml

kubectl delete -f apim-gateway/wso2apim-sv-service.yaml
kubectl delete -f apim-gateway/wso2apim-pt-service.yaml
kubectl delete -f apim-gateway/wso2apim-manager-worker-service.yaml

kubectl delete -f apim-gateway/wso2apim-manager-worker-deployment.yaml

kubectl delete -f ingresses/wso2apim-ingress.yaml
