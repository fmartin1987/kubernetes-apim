# Requeriments
echo "Satisfying requeriments..."
./deploy-kubernetes-requeriments.sh
sleep 10s

# RDBMS
echo "Deploying RDBMS..."
./deploy-kubernetes-rdbms.sh
sleep 1m

# ANALYTICS
echo "Deploying Analytics..."
./deploy-kubernetes-analytics.sh
sleep 30s

# TRAFFIC MANAGER
echo "Deploying Traffic Manager..."
./deploy-kubernetes-tm.sh
sleep 30s

# KEY MANAGER
echo "Deploying Key Manager..."
./deploy-kubernetes-km.sh
sleep 1m

# PUBLISHER
echo "Deploying Publisher..."
./deploy-kubernetes-publisher.sh
sleep 30s

# STORE
echo "Deploying Store..."
./deploy-kubernetes-store.sh
sleep 30s

# GATEWAY
echo "Deploying Gateway..."
./deploy-kubernetes-gw.sh

echo "Fully Distributed Deployment Completed"
