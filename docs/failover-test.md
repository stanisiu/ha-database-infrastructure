# Failover Test

## Objective

Verify monitoring and alerting during database node failure.

## Scenario

- Stop node exporter on db-master
- Confirm Grafana alert firing
- Restore exporter service
- Verify recovery state

## Commands

sudo systemctl stop prometheus-node-exporter
sudo systemctl start prometheus-node-exporter

## Result

Grafana successfully detected node failure and recovery.