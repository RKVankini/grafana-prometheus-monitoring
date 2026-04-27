# 📊 Grafana + Prometheus Monitoring (Single Script Setup)

This project provides a fully automated setup of a monitoring stack using Prometheus and Grafana on an Ubuntu EC2 instance using a single script.

---

## 🚀 Project Overview

- One-click installation using `setup.sh`
- Installs and configures:
  - Prometheus (metrics collection)
  - Node Exporter (system metrics)
  - Grafana (dashboard visualization)
- Automatically connects Prometheus to Grafana

---

## 🏗️ Architecture

Node Exporter → Prometheus → Grafana

- Node Exporter collects system metrics  
- Prometheus scrapes metrics  
- Grafana visualizes data  

---

## 📂 Project Structure
grafana-prometheus-monitoring/
│
├── README.md
├── scripts/
│   ├── install_grafana.sh
│   ├── install_prometheus.sh
│   ├── install_node_exporter.sh
│   └── add_datasource.sh
│
└── configs/
    └── prometheus.yml
    
---

## ⚙️ Setup Instructions

### 1. Clone Repository
https://github.com/RKVankini/grafana-prometheus-monitoring.git

cd grafana-prometheus-monitoring

---

### 2. Make Script Executable
chmod +x setup.sh

---

### 3. Run Setup Script
./setup.sh

---

## 🌐 Access Services

After successful setup:

- Grafana → http://<EC2-IP>:3000  
- Prometheus → http://<EC2-IP>:9090  

---

## 🔐 Default Credentials

- Username: admin  
- Password: admin  

---

## 🔓 Required Ports (EC2 Security Group)

| Port | Service |
|------|--------|
| 3000 | Grafana |
| 9090 | Prometheus |
| 9100 | Node Exporter |

---

## 🧪 Testing the Setup

Generate CPU load:
sudo apt install stress -y
stress --cpu 1 --timeout 60

Then check metrics in Grafana dashboard.

---

## 💡 Use Case

This setup is useful for:

- Server monitoring  
- DevOps observability  
- Cloud infrastructure health tracking  
- Real-time CPU & memory monitoring  

---

## 📌 Key Features

- Fully automated installation  
- Single script deployment  
- No manual configuration required  
- Production-style monitoring setup  

---

## 👨‍💻 Author

Rama Krishna Vankini

---

## ⭐ Future Improvements

- Add Alertmanager (alerts & notifications)  
- Terraform automation  
- Multi-instance monitoring  
- Custom Grafana dashboards  