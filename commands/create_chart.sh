#!/bin/bash 

set -e  # Exit immediately if a command exits with a non-zero status

# Variables
CHART_NAME="osss"
VALUES_FILE="values.yaml"
CHART_DIRECTORY="/home/rolo5555/Desktop/renaiss/osss"

# Change to the Helm chart directory
cd $CHART_DIRECTORY

# Update Helm dependencies
#helm dependency update

# Package Helm chart
helm package .

# Install or upgrade Helm release

helm install oss ./open-source-stack-for-startups-1.0.0.tgz -f values.yaml
#helm upgrade --install $CHART_NAME . -f $VALUES_FILE

echo "Deployment completed successfully."