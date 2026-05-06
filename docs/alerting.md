# Infrastructure Alerting

## Overview

This document describes the alerting configuration implemented using Grafana and Prometheus.

The alerting system was designed to detect infrastructure failures and notify administrators when monitored services become unavailable.

---

## Monitoring Stack

The alerting infrastructure consists of:

- Prometheus
- Grafana
- Node Exporter

Metrics are collected from:
- db-master
- db-slave
- monitor server

---

## Alert Rule Configuration

### DB Master Down Alert

The following alert rule was created to detect database server monitoring failure.

Prometheus query:

```text
up{instance="10.10.50.10:9100"} < 1
```

Alert condition:
- Trigger when monitored target becomes unavailable
- Evaluation interval: 1 minute
- Pending period: 1 minute

---

## Alert Evaluation

Grafana continuously evaluates the Prometheus query.

Expected values:

```text
1 = target online
0 = target offline
```

If the value becomes lower than 1, the alert status changes to:

```text
Alerting
```

---

## Failover Test

A failover test was performed to verify alert functionality.

### Test Procedure

Stop node exporter service:

```bash
sudo systemctl stop prometheus-node-exporter
```

Verify alert state in Grafana.

Restore monitoring service:

```bash
sudo systemctl start prometheus-node-exporter
```

---

## Test Result

The monitoring system successfully detected:
- Service interruption
- Target offline status
- Infrastructure recovery

Alert recovery was confirmed after restoring the monitoring service.

---

## Dashboard Integration

Grafana dashboard integration includes:
- Infrastructure status monitoring
- Real-time visualization
- Alert rule management

Dashboard screenshot:

![Grafana Dashboard](screenshots/grafana-dashboard.png)

---

## Result

Infrastructure alerting was successfully implemented and tested.

Features verified:
- Real-time infrastructure monitoring
- Automatic failure detection
- Alert state management
- Recovery verification