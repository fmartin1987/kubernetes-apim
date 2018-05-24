# Requeriments
echo "Satisfying requeriments..."
./deploy-openshift-requeriments.sh
sleep 10s

# RDBMS
echo "Deploying RDBMS..."
./deploy-openshift-rdbms.sh
sleep 1m

# ANALYTICS
echo "Deploying Analytics..."
./deploy-openshift-analytics.sh
sleep 30s

# TRAFFIC MANAGER
echo "Deploying Traffic Manager..."
./deploy-openshift-tm.sh
sleep 30s

# KEY MANAGER
echo "Deploying Key Manager..."
./deploy-openshift-km.sh
sleep 1m

# PUBLISHER
echo "Deploying Publisher..."
./deploy-openshift-publisher.sh
sleep 30s

# STORE
echo "Deploying Store..."
./deploy-openshift-store.sh
sleep 30s

# GATEWAY
echo "Deploying Gateway..."
./deploy-openshift-gw.sh

echo "Fully Distributed Deployment Completed"