# GATEWAY
echo "Un-Deploying Gateway..."
./undeploy-kubernetes-gw.sh

# STORE
echo "Un-Deploying Store..."
./undeploy-kubernetes-store.sh
sleep 30s

# PUBLISHER
echo "Un-Deploying Publisher..."
./undeploy-kubernetes-publisher.sh
sleep 30s

# KEY MANAGER
echo "Un-Deploying Key Manager..."
./undeploy-kubernetes-km.sh
sleep 1m

# TRAFFIC MANAGER
echo "Un-Deploying Traffic Manager..."
./undeploy-kubernetes-tm.sh
sleep 30s

# ANALYTICS
echo "Un-Deploying Analytics..."
./undeploy-kubernetes-analytics.sh
sleep 30s

# RDBMS
echo "Un-Deploying RDBMS..."
./undeploy-kubernetes-rdbms.sh
sleep 1m

echo "Fully Distributed Un-Deployment Completed"
