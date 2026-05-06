# Replication Test

## Test Database Creation

```sql
CREATE DATABASE repl_test;
```

---

## Test Table Creation

```sql
CREATE TABLE test_table (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(50)
);
```

---

## Insert Test Data

```sql
INSERT INTO test_table (name)
VALUES ('replication-success');
```

---

## Verification

Replication successfully synchronized data from Master to Slave.

Result:

```text
replication-success
```

---

## Replication Status

```text
Slave_IO_Running: Yes
Slave_SQL_Running: Yes
```