#!/bin/bash

DATE=$(date +%F)

mkdir -p ~/backup

sudo mysqldump repl_test > ~/backup/repl_test-$DATE.sql