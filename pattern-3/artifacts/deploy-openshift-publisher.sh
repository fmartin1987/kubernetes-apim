oc project wso2

oc create configmap apim-publisher-bin --from-file=../confs/apim-publisher/bin/
oc create configmap apim-publisher-conf --from-file=../confs/apim-publisher/repository/conf/
oc create configmap apim-publisher-identity --from-file=../confs/apim-publisher/repository/conf/identity/
oc create configmap apim-publisher-axis2 --from-file=../confs/apim-publisher/repository/conf/axis2/
oc create configmap apim-publisher-datasources --from-file=../confs/apim-publisher/repository/conf/datasources/
oc create configmap apim-publisher-tomcat --from-file=../confs/apim-publisher/repository/conf/tomcat/

oc create -f apim-publisher/wso2apim-publisher-volume-claim.yaml

oc create -f apim-publisher/wso2apim-publisher-local-service.yaml
oc create -f apim-publisher/wso2apim-publisher-service.yaml

oc create -f apim-publisher/wso2apim-publisher-deployment.yaml

oc create -f routes/wso2apim-publisher-route.yaml