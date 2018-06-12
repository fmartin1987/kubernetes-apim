kubectl create configmap apim-analytics-1-bin --from-file=../confs/apim-analytics-1/bin/
kubectl create configmap apim-analytics-1-conf --from-file=../confs/apim-analytics-1/repository/conf/
kubectl create configmap apim-analytics-1-spark --from-file=../confs/apim-analytics-1/repository/conf/analytics/spark/
kubectl create configmap apim-analytics-1-axis2 --from-file=../confs/apim-analytics-1/repository/conf/axis2/
kubectl create configmap apim-analytics-1-datasources --from-file=../confs/apim-analytics-1/repository/conf/datasources/
kubectl create configmap apim-analytics-1-tomcat --from-file=../confs/apim-analytics-1/repository/conf/tomcat/

kubectl create configmap apim-analytics-2-bin --from-file=../confs/apim-analytics-2/bin/
kubectl create configmap apim-analytics-2-conf --from-file=../confs/apim-analytics-2/repository/conf/
kubectl create configmap apim-analytics-2-spark --from-file=../confs/apim-analytics-2/repository/conf/analytics/spark/
kubectl create configmap apim-analytics-2-axis2 --from-file=../confs/apim-analytics-2/repository/conf/axis2/
kubectl create configmap apim-analytics-2-datasources --from-file=../confs/apim-analytics-2/repository/conf/datasources/
kubectl create configmap apim-analytics-2-tomcat --from-file=../confs/apim-analytics-2/repository/conf/tomcat/

kubectl create -f apim-analytics/wso2apim-analytics-service.yaml
kubectl create -f apim-analytics/wso2apim-analytics-1-service.yaml
kubectl create -f apim-analytics/wso2apim-analytics-2-service.yaml

kubectl create -f apim-analytics/wso2apim-analytics-1-deployment.yaml
sleep 10s
kubectl create -f apim-analytics/wso2apim-analytics-2-deployment.yaml

kubectl create -f ingresses/wso2apim-analytics-ingress.yaml
