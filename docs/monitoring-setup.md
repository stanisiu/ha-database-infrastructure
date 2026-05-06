# Monitoring Setup

## Overview

This document describes the monitoring infrastructure configuration using Prometheus and Grafana.

The monitoring server collects metrics from database nodes and visualizes infrastructure status through Grafana dashboards.

---

## Components

### Prometheus

Used for:
- Metrics collection
- Time-series data storage
- Infrastructure monitoring

### Grafana

Used for:
- Dashboard visualization
- Real-time infrastructure monitoring
- Alert management

### Node Exporter

Installed on:
- db-master
- db-slave
- monitor server

Used for:
- CPU metrics
- Memory metrics
- Disk usage metrics
- Network traffic metrics

---

## Node Exporter Installation

Install node exporter:

```bash
sudo apt update
sudo apt install prometheus-node-exporter -y
```

Check service status:

```bash
systemctl status prometheus-node-exporter
```

Verify port:

```bash
ss -tulpn | grep 9100
```

---

## Prometheus Configuration

Prometheus configuration file:

```text
/etc/prometheus/prometheus.yml
```

Example configuration:

```yaml
scrape_configs:
  - job_name: 'db-servers'
    static_configs:
      - targets: ['10.10.50.10:9100', '10.10.50.11:9100']
```

Restart Prometheus:

```bash
sudo systemctl restart prometheus
```

Check service status:

```bash
systemctl status prometheus
```

---

## Grafana Installation

Install Grafana:

```bash
sudo apt install grafana -y
```

Enable and start Grafana:

```bash
sudo systemctl enable grafana-server
sudo systemctl start grafana-server
```

Check Grafana service:

```bash
systemctl status grafana-server
```

Access Grafana:

```text
http://10.10.50.20:3000
```

Default credentials:

```text
Username: admin
Password: admin
```

---

## Grafana Dashboard

The dashboard includes:

- Server status monitoring
- CPU usage visualization
- Memory usage tracking
- Disk usage monitoring
- Network traffic monitoring

Dashboard screenshot:

![Grafana Dashboard](screenshots/grafana-dashboard.png)

---

## Monitoring Verification

Prometheus query:

```text
up
```

Expected result:

```text
1 = target is online
0 = target is offline
```

Monitoring successfully verified on:
- db-master
- db-slave
- monitor server

---

## Alerting

Grafana alert rules were configured to detect:
- Database server downtime
- Infrastructure monitoring failures

Example alert condition:

```text
up{instance="10.10.50.10:9100"} < 1
```

---

## Result

The monitoring infrastructure was successfully deployed and tested.

Features confirmed:
- Real-time metrics collection
- Dashboard visualization
- Infrastructure alerting
- Server health monitoring