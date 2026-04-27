# 📊 Grafana + Prometheus Monitoring Setup (AWS EC2)

This project demonstrates how to set up **Prometheus and Grafana monitoring stack** on an Ubuntu EC2 instance.

---

## 🚀 Components Used

- Prometheus (Monitoring & Metrics Collection)
- Node Exporter (System Metrics)
- Grafana (Visualization Dashboard)
- AWS EC2 (Ubuntu)

---

## ⚙️ Setup Steps

### 1. Install Grafana
```bash
bash scripts/install_grafana.sh

2. Install Prometheus
bash scripts/install_prometheus.sh

3. Install Node Exporter
bash scripts/install_node_exporter.sh

4. Configure Prometheus
sudo nano /etc/prometheus/prometheus.yml

Add:

- job_name: 'node_exporter'
  static_configs:
    - targets: ['localhost:9100']

Restart:

sudo systemctl restart prometheus
5. Add Prometheus to Grafana
bash scripts/add_datasource.sh
🌐 Access URLs
Grafana → http://<EC2-IP>:3000
Prometheus → http://<EC2-IP>:9090
🔐 Security Group Ports
Port	Purpose
3000	Grafana
9090	Prometheus
9100	Node Exporter
📌 Default Credentials
Username: admin
Password: admin
🧪 Testing
sudo apt install stress -y
stress --cpu 1 --timeout 60
📷 Output
System metrics visible in Grafana dashboard
CPU/Memory monitoring via Node Exporter
💡 Use Case

Used in DevOps monitoring to track:

CPU usage
Memory usage
Server health
👨‍💻 Author

Rama Krishna Vankini