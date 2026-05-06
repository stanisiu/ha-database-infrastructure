# MariaDB Slave Setup

## Environment

- Ubuntu Server 24.04
- VMware Workstation
- MariaDB 10.11
- Host-only Internal Network

---

## Slave Server Configuration

Edit MariaDB configuration file:

```bash
sudo nano /etc/mysql/mariadb.conf.d/50-server.cnf
```

Configure server-id:

```ini
server-id = 2
```

Restart MariaDB:

```bash
sudo systemctl restart mariadb
```

---

## Replication Configuration

Connect to MariaDB:

```bash
sudo mysql
```

Configure replication:

```sql
CHANGE MASTER TO
  MASTER_HOST='10.10.50.10',
  MASTER_USER='repl',
  MASTER_PASSWORD='1234',
  MASTER_LOG_FILE='mysql-bin.000001',
  MASTER_LOG_POS=328;
```

Start replication:

```sql
START SLAVE;
```

Verify replication status:

```sql
SHOW SLAVE STATUS\G
```

---

## Result

Replication configured successfully.

```text
Slave_IO_Running: Yes
Slave_SQL_Running: Yes
```