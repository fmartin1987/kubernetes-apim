oc project wso2

oc create configmap apim-tm1-bin --from-file=../confs/apim-tm-1/bin/
oc create configmap apim-tm1-conf --from-file=../confs/apim-tm-1/repository/conf/
oc create configmap apim-tm1-identity --from-file=../confs/apim-tm-1/repository/conf/identity/

oc create configmap apim-tm2-bin --from-file=../confs/apim-tm-2/bin/
oc create configmap apim-tm2-conf --from-file=../confs/apim-tm-2/repository/conf/
oc create configmap apim-tm2-identity --from-file=../confs/apim-tm-2/repository/conf/identity/

oc create -f apim-tm/wso2apim-tm-1-volume-claim.yaml
oc create -f apim-tm/wso2apim-tm-2-volume-claim.yaml

oc create -f apim-tm/wso2apim-tm-service.yaml
oc create -f apim-tm/wso2apim-tm-1-service.yaml
oc create -f apim-tm/wso2apim-tm-2-service.yaml

oc create -f apim-tm/wso2apim-tm-1-deployment.yaml
sleep 10s
oc create -f apim-tm/wso2apim-tm-2-deployment.yaml