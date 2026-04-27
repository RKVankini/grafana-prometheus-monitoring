
---

# 📜 2. install_grafana.sh

From your file :contentReference[oaicite:0]{index=0} cleaned:

```bash
#!/bin/bash

sudo apt-get update
sudo apt-get install -y apt-transport-https software-properties-common wget curl gnupg2

sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://packages.grafana.com/gpg.key | sudo tee /etc/apt/keyrings/grafana.key > /dev/null

echo "deb [signed-by=/etc/apt/keyrings/grafana.key] https://packages.grafana.com/oss/deb stable main" | \
sudo tee /etc/apt/sources.list.d/grafana.list > /dev/null

sudo apt-get update
sudo apt-get install -y grafana

sudo systemctl daemon-reload
sudo systemctl enable grafana-server
sudo systemctl start grafana-server