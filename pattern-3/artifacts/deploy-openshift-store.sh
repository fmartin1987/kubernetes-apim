oc project wso2

oc create configmap apim-store-bin --from-file=../confs/apim-store/bin/
oc create configmap apim-store-conf --from-file=../confs/apim-store/repository/conf/
oc create configmap apim-store-identity --from-file=../confs/apim-store/repository/conf/identity/
oc create configmap apim-store-axis2 --from-file=../confs/apim-store/repository/conf/axis2/
oc create configmap apim-store-datasources --from-file=../confs/apim-store/repository/conf/datasources/
oc create configmap apim-store-tomcat --from-file=../confs/apim-store/repository/conf/tomcat/

oc create -f apim-store/wso2apim-store-volume-claim.yaml

oc create -f apim-store/wso2apim-store-local-service.yaml
oc create -f apim-store/wso2apim-store-service.yaml

oc create -f apim-store/wso2apim-store-deployment.yaml

oc create -f routes/wso2apim-store-route.yaml