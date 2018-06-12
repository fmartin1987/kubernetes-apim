#!/bin/bash
sed -i 's/10\.111\.3\.120/10\.111\.3\.105/g' confs/apim-analytics-1/repository/conf/user-mgt.xml
sed -i 's/10\.111\.3\.120/10\.111\.3\.105/g' confs/apim-analytics-2/repository/conf/user-mgt.xml
sed -i 's/10\.111\.3\.120/10\.111\.3\.105/g' confs/apim-gw-manager-worker/repository/conf/user-mgt.xml
sed -i 's/10\.111\.3\.120/10\.111\.3\.105/g' confs/apim-km/repository/conf/user-mgt.xml
sed -i 's/10\.111\.3\.120/10\.111\.3\.105/g' confs/apim-publisher/repository/conf/user-mgt.xml
sed -i 's/10\.111\.3\.120/10\.111\.3\.105/g' confs/apim-store/repository/conf/user-mgt.xml
