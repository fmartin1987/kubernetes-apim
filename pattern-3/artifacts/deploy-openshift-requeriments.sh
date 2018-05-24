oc new-project wso2 --description="WSO2 API Manager 2.1.0" --display-name="wso2"
oc create serviceaccount wso2svcacct
oc adm policy add-scc-to-user anyuid -z wso2svcacct -n wso2

oc create -f volumes/persistent-volumes.yaml
oc create -f rdbms/rdbms-persistent-volume.yaml
