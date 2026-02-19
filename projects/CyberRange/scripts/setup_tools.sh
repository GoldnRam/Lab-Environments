#!/bin/bash
# setup_tools.sh
set -e

echo "Deploying Analyst Framework..."
# We use a variable for the version so it's easy to upgrade later
VERSION="0.74.1"
wget "https://github.com/Velocidex/velociraptor/releases/download/v0.74/velociraptor-v${VERSION}-linux-amd64" -O /usr/local/bin/velociraptor
chmod +x /usr/local/bin/velociraptor

/usr/local/bin/velociraptor config generate > /etc/velociraptor.config.yaml
/usr/local/bin/velociraptor --config /etc/velociraptor.config.yaml user add admin password123 --role administrator
