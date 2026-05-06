# HA Database Infrastructure Lab

High Availability Database Infrastructure project using MariaDB replication, Prometheus monitoring, and Grafana alerting.

---

## Architecture

- Router (NAT / Internal Routing)
- Switch (Layer 2 Network)
- DB Master (Write Node)
- DB Slave (Read Replica)
- Monitor Server (Prometheus & Grafana)
- Storage Server (NFS)

### Architecture Diagram

![Architecture Diagram](docs/architecture-diagram.png)

---

## Features

- MariaDB Master-Slave Replication
- Prometheus Monitoring
- Grafana Dashboard Integration
- Automated Backup Script
- Cron-based Backup Scheduling
- Infrastructure Alerting
- Failover Scenario Testing
- Network Segmentation using GNS3
- Infrastructure Automation with Shell Scripts

---

## Replication Status

- Master-Slave replication configured successfully
- Internal network communication verified
- Real-time synchronization confirmed

---

## Monitoring Dashboard

Grafana dashboard integrated with Prometheus monitoring.

### Monitoring Features

- Real-time CPU monitoring
- Memory usage tracking
- Disk usage monitoring
- Network traffic analysis
- Database server status monitoring

### Dashboard Preview

![Grafana Dashboard](docs/screenshots/grafana-dashboard.png)

---

## Technologies

- Ubuntu Server 24.04
- MariaDB
- Prometheus
- Grafana
- VMware Workstation
- GNS3
- Bash Shell Scripting

---

## Infrastructure Automation

### Backup Automation

- Automated MariaDB backup using shell scripts
- Cron-based scheduled backup execution
- Backup verification tested successfully

### Health Check Script

- Replication health monitoring script implemented
- Automatic slave status verification

---

## Failover Testing

Failover scenario testing was performed to verify monitoring and alerting behavior during infrastructure failure situations.

### Test Scenario

1. Stop Node Exporter on db-master
2. Verify Grafana alert firing
3. Restore monitoring service
4. Confirm recovery status

### Result

Infrastructure alerting and monitoring recovery confirmed successfully.
