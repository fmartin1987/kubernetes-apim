oc project wso2

oc create configmap apim-km-bin --from-file=../confs/apim-km/bin/
oc create configmap apim-km-conf --from-file=../confs/apim-km/repository/conf/
oc create configmap apim-km-identity --from-file=../confs/apim-km/repository/conf/identity/
oc create configmap apim-km-axis2 --from-file=../confs/apim-km/repository/conf/axis2/
oc create configmap apim-km-datasources --from-file=../confs/apim-km/repository/conf/datasources/
oc create configmap apim-km-tomcat --from-file=../confs/apim-km/repository/conf/tomcat/

oc create -f apim-km/wso2apim-km-service.yaml
oc create -f apim-km/wso2apim-key-manager-service.yaml

oc create -f apim-km/wso2apim-km-deployment.yaml