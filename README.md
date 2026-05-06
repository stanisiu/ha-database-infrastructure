## Architecture

- Router (NAT / Internal routing)
- Switch (Layer2 network)
- DB Master (Write)
- DB Slave (Read replica)
- Monitor (Prometheus)
- Storage (NFS)

## Features

- MariaDB Replication
- Network Segmentation (GNS3)
- Infrastructure as Code (Shell script)

## Replication Status

- Master-Slave replication configured successfully
- Internal network communication verified
- Real-time synchronization confirmed

## Monitoring Dashboard

Grafana dashboard integrated with Prometheus monitoring.

Features:
- Real-time CPU monitoring
- Memory usage tracking
- Disk usage monitoring
- Network traffic analysis
- Database server status monitoring

### Dashboard Preview

![Grafana Dashboard](docs/screenshots/grafana-dashboard.png)

## Features

- MariaDB Master-Slave Replication
- Prometheus Monitoring
- Grafana Dashboard
- Automated Backup
- Infrastructure Alerting
- Failover Scenario Testing
