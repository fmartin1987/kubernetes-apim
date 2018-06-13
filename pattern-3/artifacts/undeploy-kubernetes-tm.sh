kubectl delete configmap apim-tm1-bin
kubectl delete configmap apim-tm1-conf
kubectl delete configmap apim-tm1-identity

kubectl delete configmap apim-tm2-bin
kubectl delete configmap apim-tm2-conf
kubectl delete configmap apim-tm2-identity

kubectl delete -f apim-tm/wso2apim-tm-1-volume-claim-kubernetes.yaml
kubectl delete -f apim-tm/wso2apim-tm-2-volume-claim-kubernetes.yaml

kubectl delete -f apim-tm/wso2apim-tm-service.yaml
kubectl delete -f apim-tm/wso2apim-tm-1-service.yaml
kubectl delete -f apim-tm/wso2apim-tm-2-service.yaml

kubectl delete -f apim-tm/wso2apim-tm-1-deployment.yaml
kubectl delete -f apim-tm/wso2apim-tm-2-deployment.yaml
