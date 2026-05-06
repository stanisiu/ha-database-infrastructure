# Backup and Restore

## Overview

This document describes the backup and restore automation implemented for the MariaDB infrastructure.

The backup system was designed to support:
- Automated database backup
- Scheduled backup execution
- Backup recovery and restore operations

---

## Backup Script

Backup script location:

```text
scripts/backup.sh
```

The script automatically creates SQL dump backups of the MariaDB database.

### Example

```bash
./scripts/backup.sh
```

### Backup Directory

```text
~/backup/
```

### Generated Backup File

Example:

```text
repl_test-2026-05-06.sql
```

---

## Backup Automation

Cron scheduling was configured to automate backup execution.

### Cron Configuration

Example:

```bash
crontab -e
```

Cron job:

```text
0 2 * * * /home/soohyun/scripts/backup.sh
```

This configuration executes automated backups every day at 02:00 AM.

---

## Restore Script

Restore script location:

```text
scripts/restore_backup.sh
```

The restore script imports SQL backup files into MariaDB.

### Usage

```bash
./scripts/restore_backup.sh <backup-file.sql>
```

### Example

```bash
./scripts/restore_backup.sh ~/backup/repl_test-2026-05-06.sql
```

---

## Verification

Backup verification steps:
- SQL dump file generated successfully
- Backup directory confirmed
- Database export completed without errors

Restore verification steps:
- Database restored successfully
- Table data verified after restore
- MariaDB service confirmed operational

---

## Result

Backup and restore automation was successfully implemented.

Features confirmed:
- Automated database backup
- Scheduled backup execution
- Database restore functionality
- Recovery verification