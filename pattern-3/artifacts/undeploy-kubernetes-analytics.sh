kubectl delete configmap apim-analytics-1-bin
kubectl delete configmap apim-analytics-1-conf
kubectl delete configmap apim-analytics-1-spark
kubectl delete configmap apim-analytics-1-axis2
kubectl delete configmap apim-analytics-1-datasources
kubectl delete configmap apim-analytics-1-tomcat

kubectl delete configmap apim-analytics-2-bin
kubectl delete configmap apim-analytics-2-conf
kubectl delete configmap apim-analytics-2-spark
kubectl delete configmap apim-analytics-2-axis2
kubectl delete configmap apim-analytics-2-datasources
kubectl delete configmap apim-analytics-2-tomcat

kubectl delete -f apim-analytics/wso2apim-analytics-service.yaml
kubectl delete -f apim-analytics/wso2apim-analytics-1-service.yaml
kubectl delete -f apim-analytics/wso2apim-analytics-2-service.yaml

kubectl delete -f apim-analytics/wso2apim-analytics-1-deployment.yaml
kubectl delete -f apim-analytics/wso2apim-analytics-2-deployment.yaml

kubectl delete -f ingresses/wso2apim-analytics-ingress.yaml
