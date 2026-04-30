\# Master Database Setup



\## 1. MariaDB Installation

\- Installed MariaDB server using apt



\## 2. Configuration

\- server-id = 1

\- log\_bin = mysql-bin



\## 3. Replication User

CREATE USER 'repl'@'%' IDENTIFIED BY '1234';

GRANT REPLICATION SLAVE ON \*.\* TO 'repl'@'%';



\## 4. Test Database

\- Created database: hospital

\- Created table: patients



\## 5. Sample Data

| id | name | age | diagnosis |

|----|------|-----|----------|

| 1  | Kim  | 30  | Flu      |



\## 6. Master Status

\- File: mysql-bin.000001

\- Position: 328

