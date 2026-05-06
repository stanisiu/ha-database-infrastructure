#!/bin/bash

DATE=$(date +%F)

mkdir -p /backup

mysqldump -u root repl_test > /backup/repl_test-$DATE.sql